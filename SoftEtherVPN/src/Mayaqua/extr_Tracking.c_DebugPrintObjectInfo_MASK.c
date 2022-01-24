#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_6__ {struct TYPE_6__* Next; TYPE_1__* Object; } ;
struct TYPE_5__ {size_t Id; } ;
typedef  TYPE_1__ TRACKING_OBJECT ;
typedef  TYPE_2__ TRACKING_LIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 size_t TRACKING_NUM_ARRAY ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_2__** hashlist ; 

void FUNC4(UINT id)
{
	UINT i;
	TRACKING_OBJECT *o;

	// Search
	o = NULL;
	FUNC0();
	{
		for (i = 0;i < TRACKING_NUM_ARRAY;i++)
		{
			if (hashlist[i] != NULL)
			{
				TRACKING_LIST *t = hashlist[i];

				while (true)
				{
					if (t->Object->Id == id)
					{
						o = t->Object;
						break;
					}

					if (t->Next == NULL)
					{
						break;
					}

					t = t->Next;
				}

				if (o != NULL)
				{
					break;
				}
			}
		}
	}
	FUNC3();

	if (o == NULL)
	{
		// The ID could not be found
		FUNC1("obj_id %u Not Found.\n\n", id);
		return;
	}

	FUNC2(o);
	FUNC1("\n");
}