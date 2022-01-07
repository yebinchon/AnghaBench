
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* home_package; } ;
struct TYPE_8__ {TYPE_2__** syms; } ;
typedef TYPE_1__ Package ;


 size_t buf_len (TYPE_2__**) ;
 TYPE_1__* enter_package (TYPE_1__*) ;
 int leave_package (TYPE_1__*) ;
 int resolve_sym (TYPE_2__*) ;

void resolve_package_syms(Package *package) {
    Package *old_package = enter_package(package);
    for (size_t i = 0; i < buf_len(package->syms); i++) {
        if (package->syms[i]->home_package == package) {
            resolve_sym(package->syms[i]);
        }
    }
    leave_package(old_package);
}
