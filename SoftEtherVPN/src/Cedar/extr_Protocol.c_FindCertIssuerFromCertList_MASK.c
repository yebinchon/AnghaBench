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
struct TYPE_9__ {scalar_t__ root_cert; } ;
typedef  TYPE_1__ X ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  LIST ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,TYPE_1__*,int,int) ; 
 int FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

X *FUNC4(LIST *o, X *x)
{
	UINT i;
	// Validate arguments
	if (o == NULL || x == NULL)
	{
		return NULL;
	}

	if (x->root_cert)
	{
		return NULL;
	}

	for (i = 0;i < FUNC3(o);i++)
	{
		X *xx = FUNC2(o, i);

		if (FUNC0(x, xx, true, true))
		{
			if (FUNC1(x, xx) == false)
			{
				return xx;
			}
		}
	}

	return NULL;
}