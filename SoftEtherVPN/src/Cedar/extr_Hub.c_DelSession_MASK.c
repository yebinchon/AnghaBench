#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  SessionList; int /*<<< orphan*/  Name; } ;
struct TYPE_7__ {int /*<<< orphan*/  Name; } ;
typedef  TYPE_1__ SESSION ;
typedef  TYPE_2__ HUB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(HUB *h, SESSION *s)
{
	// Validate arguments
	if (h == NULL || s == NULL)
	{
		return;
	}

	FUNC2(h->SessionList);
	{
		if (FUNC1(h->SessionList, s))
		{
			FUNC0("Session %s was Deleted from %s.\n", s->Name, h->Name);
			FUNC3(s);
		}
	}
	FUNC4(h->SessionList);
}