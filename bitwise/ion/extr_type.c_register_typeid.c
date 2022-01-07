
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ typeid; } ;
typedef TYPE_1__ Type ;


 int map_put (int *,void*,TYPE_1__*) ;
 int typeid_map ;

void register_typeid(Type *type) {
    map_put(&typeid_map, (void *)(uintptr_t)type->typeid, type);
}
