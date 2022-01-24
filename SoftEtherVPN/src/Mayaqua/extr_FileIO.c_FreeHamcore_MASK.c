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
typedef  scalar_t__ UINT ;
struct TYPE_4__ {struct TYPE_4__* Buffer; struct TYPE_4__* FileName; } ;
typedef  TYPE_1__ HC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * hamcore ; 
 int /*<<< orphan*/ * hamcore_io ; 

void FUNC5()
{
	UINT i;
	for (i = 0;i < FUNC3(hamcore);i++)
	{
		HC *c = FUNC2(hamcore, i);
		FUNC1(c->FileName);
		if (c->Buffer != NULL)
		{
			FUNC1(c->Buffer);
		}
		FUNC1(c);
	}
	FUNC4(hamcore);

	FUNC0(hamcore_io);
	hamcore_io = NULL;
	hamcore = NULL;
}