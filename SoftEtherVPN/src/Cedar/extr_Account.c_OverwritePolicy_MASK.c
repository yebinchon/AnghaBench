#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_9__ {scalar_t__ Ver3; } ;
typedef  TYPE_1__ POLICY ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int NUM_POLICY_ITEM_FOR_VER2 ; 

void FUNC3(POLICY **target, POLICY *p)
{
	// Validate arguments
	if (target == NULL)
	{
		return;
	}

	if (p == NULL)
	{
		// Erase policy
		if (*target != NULL)
		{
			FUNC2(*target);
			*target = NULL;
		}
	}
	else
	{
		if (p->Ver3)
		{
			// Ver 3
			if (*target != NULL)
			{
				FUNC2(*target);
				*target = NULL;
			}

			*target = FUNC0(p);
		}
		else
		{
			// Ver 2
			if (*target == NULL)
			{
				*target = FUNC0(p);
			}
			else
			{
				FUNC1(*target, p, NUM_POLICY_ITEM_FOR_VER2 * sizeof(UINT));
			}
		}
	}
}