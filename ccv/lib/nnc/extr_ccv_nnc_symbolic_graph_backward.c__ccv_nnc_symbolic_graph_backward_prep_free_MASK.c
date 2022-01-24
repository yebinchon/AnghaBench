#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_7__* const alias_registry; TYPE_7__* const exec_registry; } ;
typedef  TYPE_1__ ccv_nnc_tensor_ref_t ;
struct TYPE_13__ {int exec_symbol_info_size; int tensor_symbol_info_size; int sub_prep_size; struct TYPE_13__* const sub_preps; struct TYPE_13__* const tensor_symbol_info; struct TYPE_13__* const exec_symbol_info; int /*<<< orphan*/  forward_visit; int /*<<< orphan*/  backward_visit; struct TYPE_13__* const input_bitmasks; TYPE_7__* const outgoings; struct TYPE_13__* backward_info; TYPE_7__* sum_or_set_execs; TYPE_7__* const autograd_tensor_symbols; TYPE_7__* const ref_version; struct TYPE_13__* autograd_tensor_versions; struct TYPE_13__* const inputs; struct TYPE_13__* autograd_execs; } ;
typedef  TYPE_2__ ccv_nnc_symbolic_graph_backward_prep_t ;
struct TYPE_14__ {TYPE_7__* const outgoings; TYPE_2__* const inputs; } ;
typedef  TYPE_3__ ccv_nnc_sum_or_set_graph_exec_symbol_t ;
typedef  TYPE_2__ ccv_nnc_graph_backward_info_t ;
typedef  TYPE_2__ ccv_nnc_autograd_tensor_version_t ;
typedef  TYPE_2__ ccv_nnc_autograd_graph_exec_symbol_t ;
struct TYPE_15__ {int rnum; } ;
typedef  TYPE_7__ ccv_array_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__* const) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__* const) ; 
 scalar_t__ FUNC2 (TYPE_7__* const,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(const ccv_nnc_symbolic_graph_backward_prep_t backward_prep)
{
	int i, j;
	const int exec_symbol_info_size = backward_prep.exec_symbol_info_size;
	const int tensor_symbol_info_size = backward_prep.tensor_symbol_info_size;
	ccv_nnc_autograd_graph_exec_symbol_t* const autograd_execs = backward_prep.autograd_execs;
	if (autograd_execs)
	{
		for (i = 0; i < exec_symbol_info_size; i++)
		{
			if (autograd_execs[i].inputs)
				FUNC0(autograd_execs[i].inputs);
			if (autograd_execs[i].outgoings)
				FUNC1(autograd_execs[i].outgoings);
		}
		FUNC0(autograd_execs);
	}
	ccv_nnc_autograd_tensor_version_t* const autograd_tensor_versions = backward_prep.autograd_tensor_versions;
	if (autograd_tensor_versions)
	{
		for (i = 0; i < tensor_symbol_info_size; i++)
		{
			if (autograd_tensor_versions[i].ref_version)
			{
				for (j = 0; j < autograd_tensor_versions[i].ref_version->rnum; j++)
				{
					ccv_nnc_tensor_ref_t* ref_version = (ccv_nnc_tensor_ref_t*)FUNC2(autograd_tensor_versions[i].ref_version, j);
					if (ref_version->exec_registry)
						FUNC1(ref_version->exec_registry);
					if (ref_version->alias_registry)
						FUNC1(ref_version->alias_registry);
				}
				FUNC1(autograd_tensor_versions[i].ref_version);
			}
		}
		FUNC0(autograd_tensor_versions);
	}
	if (backward_prep.autograd_tensor_symbols)
		FUNC1(backward_prep.autograd_tensor_symbols);
	ccv_array_t* const sum_or_set_execs = backward_prep.sum_or_set_execs;
	if (sum_or_set_execs)
	{
		for (i = 0; i < sum_or_set_execs->rnum; i++)
		{
			ccv_nnc_sum_or_set_graph_exec_symbol_t* sum_or_set = (ccv_nnc_sum_or_set_graph_exec_symbol_t*)FUNC2(sum_or_set_execs, i);
			if (sum_or_set->inputs)
				FUNC0(sum_or_set->inputs);
			if (sum_or_set->outgoings)
				FUNC1(sum_or_set->outgoings);
		}
		FUNC1(sum_or_set_execs);
	}
	// Now afterwards, these are mandatory.
	ccv_nnc_graph_backward_info_t* const backward_info = backward_prep.backward_info;
	for (i = 0; i < exec_symbol_info_size; i++)
	{
		if (backward_info[i].outgoings)
			FUNC1(backward_info[i].outgoings);
		if (backward_info[i].input_bitmasks)
			FUNC0(backward_info[i].input_bitmasks);
	}
	FUNC0(backward_info);
	FUNC3(backward_prep.backward_visit);
	FUNC3(backward_prep.forward_visit);
	FUNC0(backward_prep.exec_symbol_info);
	FUNC0(backward_prep.tensor_symbol_info);
	for (i = 0; i < backward_prep.sub_prep_size; i++)
		FUNC4(backward_prep.sub_preps[i]);
	if (backward_prep.sub_preps)
		FUNC0(backward_prep.sub_preps);
}