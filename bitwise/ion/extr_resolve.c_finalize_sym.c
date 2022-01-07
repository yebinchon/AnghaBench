
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ state; scalar_t__ kind; int type; TYPE_1__* decl; } ;
struct TYPE_5__ {int is_incomplete; } ;
typedef TYPE_2__ Sym ;


 scalar_t__ SYM_FUNC ;
 scalar_t__ SYM_RESOLVED ;
 scalar_t__ SYM_TYPE ;
 int assert (int) ;
 int complete_type (int ) ;
 int resolve_func_body (TYPE_2__*) ;

void finalize_sym(Sym *sym) {
    assert(sym->state == SYM_RESOLVED);
    if (sym->decl && !sym->decl->is_incomplete) {
        if (sym->kind == SYM_TYPE) {
            complete_type(sym->type);
        } else if (sym->kind == SYM_FUNC) {
            resolve_func_body(sym);
        }
    }
}
