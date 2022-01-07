
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {char const* name; TYPE_1__* home_package; } ;
struct TYPE_5__ {TYPE_2__** syms; } ;
typedef TYPE_1__ Package ;


 size_t buf_len (TYPE_2__**) ;
 char* str_intern (char*) ;
 int sym_global_put (char const*,TYPE_2__*) ;

void import_all_package_symbols(Package *package) {

    const char *main_name = str_intern("main");
    for (size_t i = 0; i < buf_len(package->syms); i++) {
        if (package->syms[i]->home_package == package && package->syms[i]->name != main_name) {
            sym_global_put(package->syms[i]->name, package->syms[i]);
        }
    }
}
