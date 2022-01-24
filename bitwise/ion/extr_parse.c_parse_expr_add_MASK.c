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
typedef  int /*<<< orphan*/  TokenKind ;
struct TYPE_2__ {int /*<<< orphan*/  kind; int /*<<< orphan*/  pos; } ;
typedef  int /*<<< orphan*/  SrcPos ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 TYPE_1__ token ; 

Expr *FUNC4(void) {
    Expr *expr = FUNC3();
    while (FUNC0()) {
        SrcPos pos = token.pos;
        TokenKind op = token.kind;
        FUNC2();
        expr = FUNC1(pos, op, expr, FUNC3());
    }
    return expr;
}