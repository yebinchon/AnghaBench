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
struct TYPE_8__ {int /*<<< orphan*/  SessionKey32; TYPE_2__* Session; } ;
typedef  TYPE_1__ UDP_ENTRY ;
struct TYPE_10__ {int /*<<< orphan*/  UDPEntryList; } ;
struct TYPE_9__ {int /*<<< orphan*/  ref; int /*<<< orphan*/  SessionKey32; } ;
typedef  TYPE_2__ SESSION ;
typedef  TYPE_3__ CEDAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int) ; 

void FUNC6(CEDAR *cedar, SESSION *session)
{
	UDP_ENTRY *e;
	// Validate arguments
	if (cedar == NULL || session == NULL)
	{
		return;
	}

	e = FUNC5(sizeof(UDP_ENTRY));
	e->Session = session;
	e->SessionKey32 = session->SessionKey32;
	FUNC1(session->ref);

	FUNC3(cedar->UDPEntryList);
	{
		FUNC0(cedar->UDPEntryList, e);
	}
	FUNC4(cedar->UDPEntryList);

	FUNC2("UDP_Entry Added.\n");
}