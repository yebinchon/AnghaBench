#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_14__ ;
typedef  struct TYPE_19__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Type ;
struct TYPE_21__ {int /*<<< orphan*/  else_expr; int /*<<< orphan*/  then_expr; int /*<<< orphan*/  cond; } ;
struct TYPE_23__ {scalar_t__ kind; int /*<<< orphan*/  pos; TYPE_1__ ternary; } ;
struct TYPE_20__ {scalar_t__ i; } ;
struct TYPE_22__ {TYPE_11__* type; TYPE_14__ val; scalar_t__ is_const; } ;
struct TYPE_19__ {scalar_t__ base; } ;
typedef  TYPE_2__ Operand ;
typedef  TYPE_3__ Expr ;

/* Variables and functions */
 scalar_t__ EXPR_TERNARY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (TYPE_11__*) ; 
 scalar_t__ FUNC3 (TYPE_2__) ; 
 scalar_t__ FUNC4 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_11__*) ; 
 TYPE_2__ FUNC6 (TYPE_11__*,TYPE_14__) ; 
 TYPE_2__ FUNC7 (TYPE_11__*) ; 
 TYPE_2__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ type_char ; 
 scalar_t__ type_void ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,TYPE_2__*) ; 

Operand FUNC11(Expr *expr, Type *expected_type) {
    FUNC0(expr->kind == EXPR_TERNARY);
    Operand cond = FUNC9(expr->ternary.cond);
    if (!FUNC5(cond.type)) {
        FUNC1(expr->pos, "Ternary conditional must have scalar type");
    }
    Operand left = FUNC8(expr->ternary.then_expr, expected_type);
    Operand right = FUNC8(expr->ternary.else_expr, expected_type);
    if (left.type == right.type) {
        return FUNC7(left.type);
    } else if (FUNC2(left.type) && FUNC2(right.type)) {
        FUNC10(&left, &right);
        if (cond.is_const && left.is_const && right.is_const) {
            return FUNC6(left.type, cond.val.i ? left.val : right.val);
        } else {
            return FUNC7(left.type);
        }
    } else if (FUNC4(left.type) && FUNC3(right)) {
        return FUNC7(left.type);
    } else if (FUNC4(right.type) && FUNC3(left)) {
        return FUNC7(right.type);
    } else {
        if (FUNC4(left.type) && FUNC4(right.type)) {
            if (left.type->base == type_void && right.type->base == type_char) {
                return FUNC7(right.type);
            } else if (left.type->base == type_char && right.type->base == type_void) {
                return FUNC7(left.type);
            }
        }
        FUNC1(expr->pos, "Left and right operands of ternary expression must have arithmetic types or identical types");
    }
}