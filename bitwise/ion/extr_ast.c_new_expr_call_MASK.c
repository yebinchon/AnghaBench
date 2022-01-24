#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {size_t num_args; int /*<<< orphan*/  args; TYPE_2__* expr; } ;
struct TYPE_9__ {TYPE_1__ call; } ;
typedef  int /*<<< orphan*/  SrcPos ;
typedef  TYPE_2__ Expr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__**) ; 
 int /*<<< orphan*/  EXPR_CALL ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

Expr *FUNC2(SrcPos pos, Expr *expr, Expr **args, size_t num_args) {
    Expr *e = FUNC1(EXPR_CALL, pos);
    e->call.expr = expr;
    e->call.args = FUNC0(args);
    e->call.num_args = num_args;
    return e;
}