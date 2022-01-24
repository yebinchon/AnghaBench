#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {scalar_t__ name; int /*<<< orphan*/  type; } ;
typedef  TYPE_3__ TypeField ;
struct TYPE_19__ {size_t num_fields; TYPE_3__* fields; } ;
struct TYPE_22__ {TYPE_1__ aggregate; int /*<<< orphan*/  base; } ;
typedef  TYPE_4__ Type ;
struct TYPE_20__ {scalar_t__ name; int /*<<< orphan*/  expr; } ;
struct TYPE_24__ {scalar_t__ kind; TYPE_2__ field; int /*<<< orphan*/  pos; } ;
struct TYPE_23__ {int /*<<< orphan*/  type; scalar_t__ is_lvalue; } ;
typedef  int /*<<< orphan*/  Sym ;
typedef  int /*<<< orphan*/  Package ;
typedef  TYPE_5__ Operand ;
typedef  TYPE_6__ Expr ;

/* Variables and functions */
 scalar_t__ EXPR_FIELD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_5__ FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_5__ operand_null ; 
 TYPE_5__ FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_5__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (scalar_t__) ; 
 TYPE_5__ FUNC12 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC16 (int /*<<< orphan*/ ) ; 

Operand FUNC17(Expr *expr) {
    FUNC0(expr->kind == EXPR_FIELD);
    Package *package = FUNC14(expr->field.expr);
    if (package) {
        Package *old_package = FUNC2(package);
        Sym *sym = FUNC11(expr->field.name);
        Operand operand = FUNC12(expr->pos, expr->field.name);
        FUNC7(old_package);
        FUNC13(expr, sym);
        return operand;
    }
    Operand operand = FUNC10(expr->field.expr);
    bool was_const_type = FUNC5(operand.type);
    Type *type = FUNC16(operand.type);
    FUNC1(type);
    if (FUNC6(type)) {
        operand = FUNC8(type->base);
        was_const_type = FUNC5(operand.type);
        type = FUNC16(operand.type);
        FUNC1(type);
    }
    if (!FUNC4(type)) {
        FUNC3(expr->pos, "Can only access fields on aggregates or pointers to aggregates");
        return operand_null;
    }
    for (size_t i = 0; i < type->aggregate.num_fields; i++) {
        TypeField field = type->aggregate.fields[i];
        if (field.name == expr->field.name) {
            Operand field_operand = operand.is_lvalue ? FUNC8(field.type) : FUNC9(field.type);
            if (was_const_type) {
                field_operand.type = FUNC15(field_operand.type);
            }
            return field_operand;
        }
    }
    FUNC3(expr->pos, "No field named '%s'", expr->field.name);
    return operand_null;
}