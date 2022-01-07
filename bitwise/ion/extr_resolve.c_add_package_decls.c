
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ name; int num_args; TYPE_1__* args; } ;
struct TYPE_11__ {scalar_t__ kind; TYPE_6__ note; int pos; } ;
struct TYPE_10__ {scalar_t__ kind; int name; } ;
struct TYPE_9__ {size_t num_decls; TYPE_4__** decls; } ;
struct TYPE_8__ {TYPE_3__* expr; } ;
typedef TYPE_2__ Package ;
typedef TYPE_3__ Expr ;
typedef TYPE_4__ Decl ;


 scalar_t__ DECL_IMPORT ;
 scalar_t__ DECL_NOTE ;
 scalar_t__ EXPR_NAME ;
 int decl_note_names ;
 scalar_t__ declare_note_name ;
 int fatal_error (int ,char*) ;
 int flag_lazy ;
 int map_get (int *,scalar_t__) ;
 int map_put (int *,int ,void*) ;
 int resolve_static_assert (TYPE_6__) ;
 scalar_t__ static_assert_name ;
 int sym_global_decl (TYPE_4__*) ;
 int warning (int ,char*,scalar_t__) ;

void add_package_decls(Package *package) {
    for (size_t i = 0; i < package->num_decls; i++) {
        Decl *decl = package->decls[i];
        if (decl->kind == DECL_NOTE) {
            if (!map_get(&decl_note_names, decl->note.name)) {
                warning(decl->pos, "Unknown declaration #directive '%s'", decl->note.name);
            }
            if (decl->note.name == declare_note_name) {
                if (decl->note.num_args != 1) {
                    fatal_error(decl->pos, "#declare_note takes 1 argument");
                }
                Expr *arg = decl->note.args[0].expr;
                if (arg->kind != EXPR_NAME) {
                    fatal_error(decl->pos, "#declare_note argument must be name");
                }
                map_put(&decl_note_names, arg->name, (void *)1);
            } else if (decl->note.name == static_assert_name) {

                if (!flag_lazy) {
                    resolve_static_assert(decl->note);
                }
            }
        } else if (decl->kind == DECL_IMPORT) {

        } else {
            sym_global_decl(decl);
        }
    }
}
