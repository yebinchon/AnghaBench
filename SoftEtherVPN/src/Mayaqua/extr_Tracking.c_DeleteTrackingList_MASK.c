#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_6__ {int /*<<< orphan*/  CallStack; struct TYPE_6__* Next; struct TYPE_6__* Object; int /*<<< orphan*/  Address; } ;
typedef  TYPE_1__ TRACKING_OBJECT ;
typedef  TYPE_1__ TRACKING_LIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__** hashlist ; 

void FUNC3(TRACKING_OBJECT *o, bool free_object_memory)
{
	UINT i;
	// Validate arguments
	if (o == NULL)
	{
		return;
	}

	i = FUNC2(o->Address);

	if (hashlist[i] != NULL)
	{
		TRACKING_LIST *ft = NULL;

		if (hashlist[i]->Object == o)
		{
			ft = hashlist[i];
			hashlist[i] = hashlist[i]->Next;
		}
		else
		{
			TRACKING_LIST *tt = hashlist[i];
			TRACKING_LIST *prev = NULL;

			while (true)
			{
				if (tt->Object == o)
				{
					prev->Next = tt->Next;
					ft = tt;
					break;
				}

				if (tt->Next == NULL)
				{
					break;
				}

				prev = tt;
				tt = tt->Next;
			}
		}

		if (ft != NULL)
		{
			FUNC1(ft);

			if (free_object_memory)
			{
				FUNC0(o->CallStack);
				FUNC1(o);
			}
		}
	}
}