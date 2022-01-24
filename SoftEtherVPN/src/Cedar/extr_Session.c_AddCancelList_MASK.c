#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_5__ {int /*<<< orphan*/  ref; } ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_1__ CANCEL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(LIST *o, CANCEL *c)
{
	UINT i;
	// Validate arguments
	if (o == NULL || c == NULL)
	{
		return;
	}

	for (i = 0;i < FUNC3(o);i++)
	{
		CANCEL *t = FUNC2(o, i);
		if (t == c)
		{
			return;
		}
	}

	FUNC1(c->ref);
	FUNC0(o, c);
}