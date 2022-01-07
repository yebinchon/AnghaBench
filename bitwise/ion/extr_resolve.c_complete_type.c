
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ kind; TYPE_2__* sym; } ;
typedef TYPE_1__ Type ;
struct TYPE_9__ {scalar_t__ kind; int aggregate; int pos; scalar_t__ is_incomplete; } ;
struct TYPE_8__ {TYPE_3__* decl; int home_package; } ;
typedef TYPE_2__ Sym ;
typedef int Package ;
typedef TYPE_3__ Decl ;


 scalar_t__ DECL_STRUCT ;
 scalar_t__ DECL_UNION ;
 scalar_t__ TYPE_COMPLETING ;
 scalar_t__ TYPE_INCOMPLETE ;
 int assert (int) ;
 int buf_push (int ,TYPE_2__*) ;
 int complete_aggregate (TYPE_1__*,int ) ;
 int * enter_package (int ) ;
 int fatal_error (int ,char*) ;
 int leave_package (int *) ;
 int sorted_syms ;

void complete_type(Type *type) {
    if (type->kind == TYPE_COMPLETING) {
        fatal_error(type->sym->decl->pos, "Type completion cycle");
        return;
    } else if (type->kind != TYPE_INCOMPLETE) {
        return;
    }
    Sym *sym = type->sym;
    Package *old_package = enter_package(sym->home_package);
    Decl *decl = sym->decl;
    if (decl->is_incomplete) {
        fatal_error(decl->pos, "Trying to use incomplete type as complete type");
    }
    type->kind = TYPE_COMPLETING;
    assert(decl->kind == DECL_STRUCT || decl->kind == DECL_UNION);
    complete_aggregate(type, decl->aggregate);
    buf_push(sorted_syms, type->sym);
    leave_package(old_package);
}
