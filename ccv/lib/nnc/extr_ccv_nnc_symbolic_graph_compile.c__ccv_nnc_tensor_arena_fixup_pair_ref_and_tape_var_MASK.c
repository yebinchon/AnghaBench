#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {intptr_t graph_ref; struct TYPE_15__** sub_arenas; scalar_t__* vt_tensors; } ;
typedef  TYPE_5__ ccv_nnc_tensor_arena_t ;
struct TYPE_16__ {int tensor_symbol_info_size; int sub_prep_size; struct TYPE_16__** sub_preps; TYPE_4__* alloc_prep; TYPE_2__* tensor_symbol_info; TYPE_1__* symbolic_graph; } ;
typedef  TYPE_6__ ccv_nnc_symbolic_graph_prep_t ;
struct TYPE_14__ {int* vt_blocks; TYPE_3__* blocks; int /*<<< orphan*/ * buffers; } ;
struct TYPE_13__ {size_t buffer_ref; } ;
struct TYPE_12__ {int flags; scalar_t__ pair_ref; } ;
struct TYPE_11__ {int /*<<< orphan*/  pair; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int CCV_NNC_TENSOR_SYMBOL_TAPE_VAR ; 
 scalar_t__ READ_ONLY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_5__ const* const,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(const ccv_nnc_tensor_arena_t* const root_arena, const ccv_nnc_symbolic_graph_prep_t* const graph_prep, ccv_nnc_tensor_arena_t* const tensor_arena)
{
	FUNC4(tensor_arena->graph_ref == (intptr_t)graph_prep->symbolic_graph);
	int i;
	for (i = 0; i < graph_prep->tensor_symbol_info_size; i++)
	{
		if (graph_prep->tensor_symbol_info[i].pair_ref)
		{
			tensor_arena->vt_tensors[i] = FUNC2(root_arena, graph_prep->symbolic_graph->pair, graph_prep->tensor_symbol_info[i].pair_ref - 1);
			// No need to continue check this if it is from its pair.
			continue;
		}
		if ((graph_prep->tensor_symbol_info[i].flags & CCV_NNC_TENSOR_SYMBOL_TAPE_VAR) && tensor_arena->vt_tensors[i])
		{
			// If it is a normal tensor, and the buffer it relies on is read only, no need to mark as tape var.
			if (!FUNC0(tensor_arena->vt_tensors[i]))
			{
				const int vt_ref = graph_prep->alloc_prep->vt_blocks[i];
				if (vt_ref >= 0 &&
					FUNC1(graph_prep->alloc_prep->buffers[graph_prep->alloc_prep->blocks[vt_ref].buffer_ref]) == READ_ONLY)
					continue;
			}
			FUNC3(tensor_arena->vt_tensors[i]);
		}
	}
	for (i = 0; i < graph_prep->sub_prep_size; i++)
		if (graph_prep->sub_preps[i])
			FUNC5(root_arena, graph_prep->sub_preps[i], tensor_arena->sub_arenas[i]);
}