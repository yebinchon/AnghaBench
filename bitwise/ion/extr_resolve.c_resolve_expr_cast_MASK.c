#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Type ;
struct TYPE_8__ {int /*<<< orphan*/  expr; int /*<<< orphan*/  type; } ;
struct TYPE_10__ {scalar_t__ kind; int /*<<< orphan*/  pos; TYPE_1__ cast; } ;
struct TYPE_9__ {int /*<<< orphan*/ * type; } ;
typedef  TYPE_2__ Operand ;
typedef  TYPE_3__ Expr ;

/* Variables and functions */
 scalar_t__ EXPR_CAST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 

Operand FUNC6(Expr *expr) {
    FUNC0(expr->kind == EXPR_CAST);
    Type *type = FUNC5(expr->cast.type);
    Operand operand = FUNC4(expr->cast.expr, type);
    if (!FUNC1(&operand, type)) {
        FUNC2(expr->pos, "Invalid type cast from %s to %s", FUNC3(operand.type), FUNC3(type));
    }
    return operand;
}