
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Type ;


 int map_put (int *,void*,int *) ;
 int resolved_type_map ;

void set_resolved_type(void *ptr, Type *type) {
    map_put(&resolved_type_map, ptr, type);
}
