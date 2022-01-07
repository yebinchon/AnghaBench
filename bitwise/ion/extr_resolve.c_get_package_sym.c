
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int syms_map; } ;
typedef int Sym ;
typedef TYPE_1__ Package ;


 int * map_get (int *,char const*) ;

Sym *get_package_sym(Package *package, const char *name) {
    return map_get(&package->syms_map, name);
}
