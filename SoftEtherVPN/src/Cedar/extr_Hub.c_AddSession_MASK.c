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
struct TYPE_7__ {int /*<<< orphan*/  UniqueId; scalar_t__ InProcMode; int /*<<< orphan*/  Name; int /*<<< orphan*/  ref; } ;
typedef  TYPE_1__ SESSION ;
typedef  TYPE_2__ HUB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(HUB *h, SESSION *s)
{
	// Validate arguments
	if (h == NULL || s == NULL)
	{
		return;
	}

	FUNC4(h->SessionList);
	{
		FUNC3(h->SessionList, s);
		FUNC0(s->ref);
		FUNC1("Session %s Inserted to %s.\n", s->Name, h->Name);

		if (s->InProcMode)
		{
			s->UniqueId = FUNC2(h);
		}
	}
	FUNC5(h->SessionList);
}