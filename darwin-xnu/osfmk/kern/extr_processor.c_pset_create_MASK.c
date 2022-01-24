#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* pset_node_t ;
typedef  TYPE_2__* processor_set_t ;
struct TYPE_11__ {struct TYPE_11__* pset_list; } ;
struct TYPE_10__ {TYPE_2__* psets; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 TYPE_2__* PROCESSOR_SET_NULL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int) ; 
 int /*<<< orphan*/  master_processor ; 
 int /*<<< orphan*/  multiple_psets_enabled ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  pset_node_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

processor_set_t
FUNC6(
	pset_node_t			node)
{
	/* some schedulers do not support multiple psets */
	if (FUNC0(multiple_psets_enabled) == FALSE)
		return FUNC2(master_processor);

	processor_set_t		*prev, pset = FUNC1(sizeof (*pset));

	if (pset != PROCESSOR_SET_NULL) {
		FUNC3(pset, node);

		FUNC4(&pset_node_lock);

		prev = &node->psets;
		while (*prev != PROCESSOR_SET_NULL)
			prev = &(*prev)->pset_list;

		*prev = pset;

		FUNC5(&pset_node_lock);
	}

	return (pset);
}