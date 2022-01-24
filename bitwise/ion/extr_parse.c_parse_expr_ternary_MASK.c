#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  pos; } ;
typedef  int /*<<< orphan*/  SrcPos ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 int /*<<< orphan*/  TOKEN_COLON ; 
 int /*<<< orphan*/  TOKEN_QUESTION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 TYPE_1__ token ; 

Expr *FUNC4(void) {
    SrcPos pos = token.pos;
    Expr *expr = FUNC3();
    if (FUNC1(TOKEN_QUESTION)) {
        Expr *then_expr = FUNC4();
        FUNC0(TOKEN_COLON);
        Expr *else_expr = FUNC4();
        expr = FUNC2(pos, expr, then_expr, else_expr);
    }
    return expr;
}