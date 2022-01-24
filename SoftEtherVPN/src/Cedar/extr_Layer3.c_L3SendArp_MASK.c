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
typedef  int /*<<< orphan*/  t ;
typedef  int UINT ;
struct TYPE_10__ {int IpAddress; scalar_t__ Expire; } ;
struct TYPE_9__ {int /*<<< orphan*/  ArpWaitTable; } ;
typedef  TYPE_1__ L3IF ;
typedef  TYPE_2__ L3ARPWAIT ;

/* Variables and functions */
 scalar_t__ ARP_REQUEST_GIVEUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 TYPE_2__* FUNC4 (int) ; 

void FUNC5(L3IF *f, UINT ip)
{
	L3ARPWAIT t, *w;
	// Validate arguments
	if (f == NULL || ip == 0 || ip == 0xffffffff)
	{
		return;
	}

	// Examine whether it has not already registered
	FUNC3(&t, sizeof(t));
	t.IpAddress = ip;
	w = FUNC1(f->ArpWaitTable, &t);

	if (w != NULL)
	{
		// Do not do anything because it is already registered in the waiting list
		return;
	}
	else
	{
		// Register in the waiting list newly
		w = FUNC4(sizeof(L3ARPWAIT));
		w->Expire = FUNC2() + ARP_REQUEST_GIVEUP;
		w->IpAddress = ip;
		FUNC0(f->ArpWaitTable, w);
	}
}