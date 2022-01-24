#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_7__* exec_info; } ;
typedef  TYPE_2__ ccv_nnc_graph_t ;
struct TYPE_10__ {scalar_t__ d; TYPE_2__* const graph; } ;
typedef  TYPE_3__ ccv_nnc_graph_exec_t ;
struct TYPE_8__ {int offset; int /*<<< orphan*/  expr; void const* data; } ;
struct TYPE_11__ {int flags; TYPE_1__ case_of; } ;
typedef  TYPE_4__ ccv_nnc_graph_exec_info_t ;
typedef  int /*<<< orphan*/  ccv_nnc_graph_case_of_f ;
struct TYPE_12__ {scalar_t__ rnum; } ;

/* Variables and functions */
 int CCV_NNC_GRAPH_EXEC_CASE_OF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_7__*,scalar_t__) ; 

void FUNC2(ccv_nnc_graph_t* const graph, const ccv_nnc_graph_exec_t exec, ccv_nnc_graph_case_of_f case_of, const void* case_of_data, const int offset)
{
	FUNC0(exec.graph == graph);
	FUNC0(exec.d >= 0);
	FUNC0(exec.d < graph->exec_info->rnum);
	ccv_nnc_graph_exec_info_t* const exec_info = (ccv_nnc_graph_exec_info_t*)FUNC1(graph->exec_info, exec.d);
	FUNC0(exec_info->flags & CCV_NNC_GRAPH_EXEC_CASE_OF);
	exec_info->case_of.data = case_of_data;
	exec_info->case_of.expr = case_of;
	exec_info->case_of.offset = offset;
}