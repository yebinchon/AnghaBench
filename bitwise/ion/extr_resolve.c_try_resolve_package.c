
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int name; TYPE_3__* expr; } ;
struct TYPE_9__ {scalar_t__ kind; TYPE_1__ field; int name; } ;
struct TYPE_8__ {scalar_t__ kind; int * package; } ;
typedef TYPE_2__ Sym ;
typedef int Package ;
typedef TYPE_3__ Expr ;


 scalar_t__ EXPR_FIELD ;
 scalar_t__ EXPR_NAME ;
 scalar_t__ SYM_PACKAGE ;
 TYPE_2__* get_package_sym (int *,int ) ;
 TYPE_2__* resolve_name (int ) ;

Package *try_resolve_package(Expr *expr) {
    if (expr->kind == EXPR_NAME) {
        Sym *sym = resolve_name(expr->name);
        if (sym && sym->kind == SYM_PACKAGE) {
            return sym->package;
        }
    } else if (expr->kind == EXPR_FIELD) {
        Package *package = try_resolve_package(expr->field.expr);
        if (package) {
            Sym *sym = get_package_sym(package, expr->field.name);
            if (sym && sym->kind == SYM_PACKAGE) {
                return sym->package;
            }
        }
    }
    return ((void*)0);
}
