import RealmSwift

class RealmService {
   static  let  realm: Realm = try! Realm(fileURL: URL(fileURLWithPath: "Users/thomasdewulf/Desktop/testRealm.realm"))
    
   static func addOrUpdate(object : Object) {
        try! realm.write {
            realm.add(object, update: true)
        }
    }
    
    static func findUser(userId : String) -> ApplicationUser
    {
        let user = realm.objects(ApplicationUser.self).filter({$0.userId == userId}).first!
        return user
    }
    
    static func findDrank(drankId: Int) -> Drank {
        let drank = realm.objects(Drank.self).filter({$0.drankId == drankId}).first!
        return drank
    }
    
    static func findOrder(orderId: Int) -> Order {
        let order = realm.objects(Order.self).filter({$0.orderId == orderId}).first!
        return order
    }
}
