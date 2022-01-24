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
typedef  int /*<<< orphan*/  Stmt ;
typedef  int /*<<< orphan*/  SrcPos ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__ token ; 

Stmt *FUNC6(void) {
    SrcPos pos = token.pos;
    Expr *expr = FUNC4();
    Stmt *stmt = FUNC5(expr);
    if (!stmt) {
        if (FUNC0()) {
            TokenKind op = token.kind;
            FUNC3();
            stmt = FUNC1(pos, op, expr, FUNC4());
        } else {
            stmt = FUNC2(pos, expr);
        }
    }
    return stmt;
}