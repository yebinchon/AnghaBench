#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_8__ {TYPE_2__* Session; int /*<<< orphan*/  SessionKey32; } ;
typedef  TYPE_1__ UDP_ENTRY ;
struct TYPE_10__ {int /*<<< orphan*/  UDPEntryList; } ;
struct TYPE_9__ {int /*<<< orphan*/  ref; } ;
typedef  TYPE_2__ SESSION ;
typedef  TYPE_3__ CEDAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

SESSION *FUNC4(CEDAR *cedar, UINT key32)
{
	UDP_ENTRY *e, t;
	SESSION *s;
	// Validate arguments
	if (cedar == NULL)
	{
		return NULL;
	}

	t.SessionKey32 = key32;

	FUNC1(cedar->UDPEntryList);
	{
		e = FUNC2(cedar->UDPEntryList, &t);
		if (e == NULL)
		{
			FUNC3(cedar->UDPEntryList);
			return NULL;
		}
		s = e->Session;
		FUNC0(s->ref);
	}
	FUNC3(cedar->UDPEntryList);

	return s;
}