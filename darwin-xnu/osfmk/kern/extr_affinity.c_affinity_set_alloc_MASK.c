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
struct affinity_set {int dummy; } ;
typedef  TYPE_1__* affinity_set_t ;
struct TYPE_4__ {int /*<<< orphan*/ * aset_space; int /*<<< orphan*/  aset_pset; scalar_t__ aset_num; int /*<<< orphan*/  aset_threads; int /*<<< orphan*/  aset_affinities; scalar_t__ aset_thread_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  PROCESSOR_SET_NULL ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static affinity_set_t
FUNC3(void) 
{
	affinity_set_t	aset;

	aset = (affinity_set_t) FUNC1(sizeof(struct affinity_set));
	if (aset == NULL)
		return NULL;

	aset->aset_thread_count = 0;
	FUNC2(&aset->aset_affinities);
	FUNC2(&aset->aset_threads);
	aset->aset_num = 0;
	aset->aset_pset = PROCESSOR_SET_NULL;
	aset->aset_space = NULL;

	FUNC0("affinity_set_create() returns %p\n", aset);
	return aset;
}