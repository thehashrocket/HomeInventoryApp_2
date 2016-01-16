//
//  Box.swift
//  HomeInventory
//
//  Created by Jason Shultz on 11/18/15.
//  Copyright © 2015 Chaos Elevators, Inc.. All rights reserved.
//

import RealmSwift
import Foundation

class Box: Object {
    
    dynamic var id = NSUUID().UUIDString
    dynamic var name = ""
    dynamic var box_description = ""
    dynamic var photo = ""
    let items = List<Inventory>()
    
    // Specify properties to ignore (Realm won't persist these)
    
    //  override static func ignoredProperties() -> [String] {
    //    return []
    //  }
    
    override static func primaryKey() -> String? {
        return "id"
    }
}
