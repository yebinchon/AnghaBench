
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Type ;


 int * map_get (int *,void*) ;
 int typeid_map ;

Type *get_type_from_typeid(int typeid) {
    if (typeid == 0) {
        return ((void*)0);
    }
    return map_get(&typeid_map, (void *)(uintptr_t)typeid);
}
