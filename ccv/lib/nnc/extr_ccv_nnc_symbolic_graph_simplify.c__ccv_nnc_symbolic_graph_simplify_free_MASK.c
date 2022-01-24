#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* const output_execs; struct TYPE_4__* const exec_dead; struct TYPE_4__* const exec_symbol_info; struct TYPE_4__* const tensor_symbol_info; int /*<<< orphan*/  visit; } ;
typedef  TYPE_1__ ccv_nnc_symbolic_graph_simplify_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__* const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(ccv_nnc_symbolic_graph_simplify_t* const simplify)
{
	FUNC1(simplify->visit);
	FUNC0(simplify->tensor_symbol_info);
	FUNC0(simplify->exec_symbol_info);
	FUNC0(simplify->exec_dead);
	FUNC0(simplify->output_execs);
	FUNC0(simplify);
}