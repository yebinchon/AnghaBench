#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ kind; scalar_t__ nonmodifiable; } ;
typedef  TYPE_2__ Type ;
struct TYPE_12__ {int /*<<< orphan*/  op; int /*<<< orphan*/  expr; } ;
struct TYPE_15__ {TYPE_1__ modify; int /*<<< orphan*/  pos; } ;
struct TYPE_14__ {int /*<<< orphan*/  is_lvalue; TYPE_2__* type; } ;
typedef  TYPE_3__ Operand ;
typedef  TYPE_4__ Expr ;

/* Variables and functions */
 scalar_t__ TYPE_PTR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 TYPE_3__ FUNC3 (TYPE_2__*) ; 
 TYPE_3__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

Operand FUNC6(Expr *expr) {
    Operand operand = FUNC4(expr->modify.expr);
    Type *type = operand.type;
    FUNC0(type);
    if (!operand.is_lvalue) {
        FUNC1(expr->pos, "Cannot modify non-lvalue");
    }
    if (type->nonmodifiable) {
        FUNC1(expr->pos, "Cannot modify non-modifiable type");
    }
    if (!(FUNC2(type) || type->kind == TYPE_PTR)) {
        FUNC1(expr->pos, "%s only valid for integer and pointer types", FUNC5(expr->modify.op));
    }
    return FUNC3(type);
}