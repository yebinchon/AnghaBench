
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Sym ;


 int * map_get (int *,void const*) ;
 int resolved_sym_map ;

Sym *get_resolved_sym(const void *ptr) {
    return map_get(&resolved_sym_map, ptr);
}
