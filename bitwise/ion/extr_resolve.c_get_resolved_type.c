
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Type ;


 int * map_get (int *,void*) ;
 int resolved_type_map ;

Type *get_resolved_type(void *ptr) {
    return map_get(&resolved_type_map, ptr);
}
