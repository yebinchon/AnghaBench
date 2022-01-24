#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_12__ {scalar_t__ Expire; } ;
struct TYPE_11__ {int /*<<< orphan*/ * IpCombine; TYPE_1__* v; } ;
struct TYPE_10__ {scalar_t__ Now; } ;
typedef  TYPE_2__ NATIVE_NAT ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_3__ IP_COMBINE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(NATIVE_NAT *t)
{
	LIST *o;
	UINT i;
	// Validate arguments
	if (t == NULL)
	{
		return;
	}

	// Discard the old combining object
	o = NULL;
	for (i = 0;i < FUNC3(t->IpCombine);i++)
	{
		IP_COMBINE *c = FUNC2(t->IpCombine, i);

		if (c->Expire < t->v->Now)
		{
			if (o == NULL)
			{
				o = FUNC4(NULL);
			}
			FUNC0(o, c);
		}
	}

	if (o != NULL)
	{
		for (i = 0;i < FUNC3(o);i++)
		{
			IP_COMBINE *c = FUNC2(o, i);

			// Remove from the list
			FUNC1(t->IpCombine, c);

			// Release the memory
			FUNC5(t, c);
		}
		FUNC6(o);
	}
}