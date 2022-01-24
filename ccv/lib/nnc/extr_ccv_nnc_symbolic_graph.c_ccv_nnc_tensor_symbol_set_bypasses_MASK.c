#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_9__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ d; TYPE_4__* const graph; } ;
typedef  TYPE_1__ ccv_nnc_tensor_symbol_t ;
struct TYPE_11__ {int /*<<< orphan*/  destination; int /*<<< orphan*/  source; } ;
typedef  TYPE_2__ ccv_nnc_tensor_symbol_map_t ;
struct TYPE_12__ {scalar_t__ bypass_ref; scalar_t__ r_bypass_ref; int /*<<< orphan*/  alias_ref; } ;
typedef  TYPE_3__ ccv_nnc_tensor_symbol_info_t ;
struct TYPE_13__ {TYPE_9__* tensor_symbol_info; } ;
typedef  TYPE_4__ ccv_nnc_symbolic_graph_t ;
struct TYPE_14__ {scalar_t__ rnum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_9__*,scalar_t__) ; 
 TYPE_1__ FUNC2 (TYPE_4__* const,int /*<<< orphan*/ ) ; 

void FUNC3(ccv_nnc_symbolic_graph_t* const graph, const ccv_nnc_tensor_symbol_map_t* const symbol_map, const int symbol_map_size)
{
	int i;
	for (i = 0; i < symbol_map_size; i++)
	{
		const ccv_nnc_tensor_symbol_t source = FUNC2(graph, symbol_map[i].source);
		const ccv_nnc_tensor_symbol_t destination = FUNC2(graph, symbol_map[i].destination);
		FUNC0(source.graph == graph);
		FUNC0(destination.graph == graph);
		FUNC0(source.d < graph->tensor_symbol_info->rnum);
		FUNC0(destination.d < graph->tensor_symbol_info->rnum);
		ccv_nnc_tensor_symbol_info_t* source_tensor_symbol_info = (ccv_nnc_tensor_symbol_info_t*)FUNC1(graph->tensor_symbol_info, source.d);
		ccv_nnc_tensor_symbol_info_t* destination_tensor_symbol_info = (ccv_nnc_tensor_symbol_info_t*)FUNC1(graph->tensor_symbol_info, destination.d);
		// Don't support parameterize with alias. The reason is that to support parameterized loop (for SSA), I choose
		// to simply reuse the piece of memory (allocating the same memory region to both, therefore to enable parameter
		// passing). For alias, it is not possible because alias can pointing to the tensors with different sizes, thus,
		// these pointed tensors cannot share the same memory region. The best way for alias to be parameterized is to
		// create a new tensor of the same size, transfer value over, and parameterized on that tensor instead.
		FUNC0(!destination_tensor_symbol_info->alias_ref);
		FUNC0(!source_tensor_symbol_info->alias_ref);
		destination_tensor_symbol_info->bypass_ref = source.d + 1;
		source_tensor_symbol_info->r_bypass_ref = destination.d + 1;
	}
}