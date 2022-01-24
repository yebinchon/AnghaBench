#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int isPartial; int addedToPruningInstances; } ;
typedef  TYPE_1__ PruningInstance ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*,int) ; 
 TYPE_1__* FUNC2 (int) ; 

__attribute__((used)) static PruningInstance *
FUNC3(PruningInstance *sourceInstance)
{
	PruningInstance *newInstance = FUNC2(sizeof(PruningInstance));

	FUNC0(sourceInstance->isPartial);

	/*
	 * To make the new PruningInstance useful for pruning, we have to reset it
	 * being partial - if necessary it'll be marked so again by
	 * PrunableExpressionsWalker().
	 */
	FUNC1(newInstance, sourceInstance, sizeof(PruningInstance));
	newInstance->addedToPruningInstances = false;
	newInstance->isPartial = false;

	return newInstance;
}