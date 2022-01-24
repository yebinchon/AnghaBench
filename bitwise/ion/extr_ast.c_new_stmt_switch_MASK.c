#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t num_cases; int /*<<< orphan*/  cases; int /*<<< orphan*/ * expr; } ;
struct TYPE_6__ {TYPE_1__ switch_stmt; } ;
typedef  int /*<<< orphan*/  SwitchCase ;
typedef  TYPE_2__ Stmt ;
typedef  int /*<<< orphan*/  SrcPos ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STMT_SWITCH ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

Stmt *FUNC2(SrcPos pos, Expr *expr, SwitchCase *cases, size_t num_cases) {
    Stmt *s = FUNC1(STMT_SWITCH, pos);
    s->switch_stmt.expr = expr;
    s->switch_stmt.cases = FUNC0(cases);
    s->switch_stmt.num_cases = num_cases;
    return s;
}