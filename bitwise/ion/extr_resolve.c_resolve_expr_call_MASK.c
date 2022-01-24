#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;
typedef  struct TYPE_22__   TYPE_19__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Type ;
struct TYPE_28__ {scalar_t__ kind; int /*<<< orphan*/  name; } ;
struct TYPE_23__ {int num_args; TYPE_6__* expr; TYPE_6__** args; } ;
struct TYPE_27__ {scalar_t__ kind; int /*<<< orphan*/  pos; TYPE_1__ call; } ;
struct TYPE_26__ {TYPE_19__* type; } ;
struct TYPE_25__ {scalar_t__ kind; TYPE_19__* type; } ;
struct TYPE_24__ {size_t num_params; scalar_t__ intrinsic; int /*<<< orphan*/  has_varargs; } ;
struct TYPE_22__ {scalar_t__ kind; TYPE_2__ func; } ;
typedef  TYPE_3__ Sym ;
typedef  TYPE_4__ Operand ;
typedef  TYPE_5__ Expr ;

/* Variables and functions */
 scalar_t__ EXPR_CALL ; 
 scalar_t__ EXPR_NAME ; 
 scalar_t__ SYM_TYPE ; 
 scalar_t__ TYPE_FUNC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,TYPE_19__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_19__*) ; 
 TYPE_4__ FUNC4 (TYPE_4__,TYPE_5__*) ; 
 TYPE_4__ FUNC5 (TYPE_4__,TYPE_5__*,int /*<<< orphan*/ *) ; 
 TYPE_4__ FUNC6 (TYPE_6__*) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,TYPE_3__*) ; 

Operand FUNC9(Expr *expr, Type *expected_type) {
    FUNC0(expr->kind == EXPR_CALL);
    if (expr->call.expr->kind == EXPR_NAME) {
        Sym *sym = FUNC7(expr->call.expr->name);
        if (sym && sym->kind == SYM_TYPE) {
            if (expr->call.num_args != 1) {
                FUNC2(expr->pos, "Type conversion operator takes 1 argument");
            }
            Operand operand = FUNC6(expr->call.args[0]);
            if (!FUNC1(&operand, sym->type)) {
                FUNC2(expr->pos, "Invalid type cast from %s to %s", FUNC3(operand.type), FUNC3(sym->type));
            }
            FUNC8(expr->call.expr, sym);
            return operand;
        }
    }
    Operand func = FUNC6(expr->call.expr);
    if (func.type->kind != TYPE_FUNC) {
        FUNC2(expr->pos, "Cannot call non-function value");
    }
    size_t num_params = func.type->func.num_params;
    if (expr->call.num_args < num_params) {
        FUNC2(expr->pos, "Function call with too few arguments");
    }
    if (expr->call.num_args > num_params && !func.type->func.has_varargs) {
        FUNC2(expr->pos, "Function call with too many arguments");
    }
    if (func.type->func.intrinsic) {
        return FUNC5(func, expr, expected_type);
    } else {
        return FUNC4(func, expr);
    }
}