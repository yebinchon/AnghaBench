
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Sym ;


 int is_local_sym (int *) ;
 int map_put (int *,void const*,int *) ;
 int resolved_sym_map ;

void set_resolved_sym(const void *ptr, Sym *sym) {
    if (!is_local_sym(sym)) {
        map_put(&resolved_sym_map, ptr, sym);
    }
}
