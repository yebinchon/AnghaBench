#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_9__ {int /*<<< orphan*/ * NonSslList; } ;
struct TYPE_8__ {scalar_t__ EntryExpires; } ;
typedef  TYPE_1__ NON_SSL ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_2__ CEDAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 () ; 

void FUNC8(CEDAR *c)
{
	UINT i;
	LIST *o;
	// Validate arguments
	if (c == NULL)
	{
		return;
	}

	o = FUNC5(NULL);

	for (i = 0;i < FUNC4(c->NonSslList);i++)
	{
		NON_SSL *n = FUNC3(c->NonSslList, i);

		if (n->EntryExpires <= FUNC7())
		{
			FUNC0(o, n);
		}
	}

	for (i = 0;i < FUNC4(o);i++)
	{
		NON_SSL *n = FUNC3(o, i);

		FUNC1(c->NonSslList, n);
		FUNC2(n);
	}

	FUNC6(o);
}