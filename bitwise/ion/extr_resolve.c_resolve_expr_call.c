
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_19__ ;


typedef int Type ;
struct TYPE_28__ {scalar_t__ kind; int name; } ;
struct TYPE_23__ {int num_args; TYPE_6__* expr; TYPE_6__** args; } ;
struct TYPE_27__ {scalar_t__ kind; int pos; TYPE_1__ call; } ;
struct TYPE_26__ {TYPE_19__* type; } ;
struct TYPE_25__ {scalar_t__ kind; TYPE_19__* type; } ;
struct TYPE_24__ {size_t num_params; scalar_t__ intrinsic; int has_varargs; } ;
struct TYPE_22__ {scalar_t__ kind; TYPE_2__ func; } ;
typedef TYPE_3__ Sym ;
typedef TYPE_4__ Operand ;
typedef TYPE_5__ Expr ;


 scalar_t__ EXPR_CALL ;
 scalar_t__ EXPR_NAME ;
 scalar_t__ SYM_TYPE ;
 scalar_t__ TYPE_FUNC ;
 int assert (int) ;
 int cast_operand (TYPE_4__*,TYPE_19__*) ;
 int fatal_error (int ,char*,...) ;
 int get_type_name (TYPE_19__*) ;
 TYPE_4__ resolve_expr_call_default (TYPE_4__,TYPE_5__*) ;
 TYPE_4__ resolve_expr_call_intrinsic (TYPE_4__,TYPE_5__*,int *) ;
 TYPE_4__ resolve_expr_rvalue (TYPE_6__*) ;
 TYPE_3__* resolve_name (int ) ;
 int set_resolved_sym (TYPE_6__*,TYPE_3__*) ;

Operand resolve_expr_call(Expr *expr, Type *expected_type) {
    assert(expr->kind == EXPR_CALL);
    if (expr->call.expr->kind == EXPR_NAME) {
        Sym *sym = resolve_name(expr->call.expr->name);
        if (sym && sym->kind == SYM_TYPE) {
            if (expr->call.num_args != 1) {
                fatal_error(expr->pos, "Type conversion operator takes 1 argument");
            }
            Operand operand = resolve_expr_rvalue(expr->call.args[0]);
            if (!cast_operand(&operand, sym->type)) {
                fatal_error(expr->pos, "Invalid type cast from %s to %s", get_type_name(operand.type), get_type_name(sym->type));
            }
            set_resolved_sym(expr->call.expr, sym);
            return operand;
        }
    }
    Operand func = resolve_expr_rvalue(expr->call.expr);
    if (func.type->kind != TYPE_FUNC) {
        fatal_error(expr->pos, "Cannot call non-function value");
    }
    size_t num_params = func.type->func.num_params;
    if (expr->call.num_args < num_params) {
        fatal_error(expr->pos, "Function call with too few arguments");
    }
    if (expr->call.num_args > num_params && !func.type->func.has_varargs) {
        fatal_error(expr->pos, "Function call with too many arguments");
    }
    if (func.type->func.intrinsic) {
        return resolve_expr_call_intrinsic(func, expr, expected_type);
    } else {
        return resolve_expr_call_default(func, expr);
    }
}
