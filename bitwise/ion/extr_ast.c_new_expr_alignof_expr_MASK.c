#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* alignof_expr; } ;
typedef  int /*<<< orphan*/  SrcPos ;
typedef  TYPE_1__ Expr ;

/* Variables and functions */
 int /*<<< orphan*/  EXPR_ALIGNOF_EXPR ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

Expr *FUNC1(SrcPos pos, Expr *expr) {
    Expr *e = FUNC0(EXPR_ALIGNOF_EXPR, pos);
    e->alignof_expr = expr;
    return e;
}