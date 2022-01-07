
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {size_t num_items; TYPE_3__* items; } ;
struct TYPE_11__ {int pos; TYPE_1__ import; } ;
struct TYPE_10__ {scalar_t__ name; scalar_t__ rename; } ;
struct TYPE_9__ {int path; } ;
typedef int Sym ;
typedef TYPE_2__ Package ;
typedef TYPE_3__ ImportItem ;
typedef TYPE_4__ Decl ;


 int fatal_error (int ,char*,scalar_t__,int ) ;
 int * get_package_sym (TYPE_2__*,scalar_t__) ;
 int sym_global_put (scalar_t__,int *) ;

void import_package_symbols(Decl *decl, Package *package) {
    for (size_t i = 0; i < decl->import.num_items; i++) {
        ImportItem item = decl->import.items[i];
        Sym *sym = get_package_sym(package, item.name);
        if (!sym) {
            fatal_error(decl->pos, "Symbol '%s' does not exist in package '%s'", item.name, package->path);
        }
        sym_global_put(item.rename ? item.rename : item.name, sym);
    }
}
