#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TokenKind ;
struct TYPE_4__ {int /*<<< orphan*/  right; int /*<<< orphan*/  left; int /*<<< orphan*/  op; } ;
struct TYPE_5__ {scalar_t__ kind; TYPE_1__ binary; int /*<<< orphan*/  pos; } ;
typedef  int /*<<< orphan*/  Operand ;
typedef  TYPE_2__ Expr ;

/* Variables and functions */
 scalar_t__ EXPR_BINARY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 

Operand FUNC4(Expr *expr) {
    FUNC0(expr->kind == EXPR_BINARY);
    Operand left = FUNC2(expr->binary.left);
    Operand right = FUNC2(expr->binary.right);
    TokenKind op = expr->binary.op;
    const char *op_name = FUNC3(op);
    return FUNC1(op, op_name, expr->pos, left, right, expr->binary.left, expr->binary.right);
}