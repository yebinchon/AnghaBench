#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ Now; int /*<<< orphan*/ * IpCombine; } ;
typedef  TYPE_1__ VH ;
typedef  scalar_t__ UINT ;
struct TYPE_10__ {scalar_t__ Expire; } ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_2__ IP_COMBINE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(VH *v)
{
	LIST *o;
	UINT i;
	// Validate arguments
	if (v == NULL)
	{
		return;
	}

	// Discard the old combining object
	o = NULL;
	for (i = 0;i < FUNC4(v->IpCombine);i++)
	{
		IP_COMBINE *c = FUNC3(v->IpCombine, i);

		if (c->Expire < v->Now)
		{
			if (o == NULL)
			{
				o = FUNC5(NULL);
			}
			FUNC0(o, c);
		}
	}

	if (o != NULL)
	{
		for (i = 0;i < FUNC4(o);i++)
		{
			IP_COMBINE *c = FUNC3(o, i);

			// Remove from the list
			FUNC1(v->IpCombine, c);

			// Release the memory
			FUNC2(v, c);
		}
		FUNC6(o);
	}
}