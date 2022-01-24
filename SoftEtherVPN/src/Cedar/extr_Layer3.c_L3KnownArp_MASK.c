#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  t ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_11__ {int IpAddress; } ;
struct TYPE_10__ {int IpAddress; int SubnetMask; int /*<<< orphan*/  IpWaitList; } ;
typedef  TYPE_1__ L3IF ;
typedef  TYPE_2__ L3ARPWAIT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 

void FUNC5(L3IF *f, UINT ip, UCHAR *mac)
{
	L3ARPWAIT t, *w;
	// Validate arguments
	if (f == NULL || ip == 0 || ip == 0xffffffff || mac == NULL)
	{
		return;
	}

	if (!((f->IpAddress & f->SubnetMask) == (ip & f->SubnetMask)))
	{
		// Outside the subnet
		return;
	}

	// Delete an ARP query entry to this IP address
	FUNC4(&t, sizeof(t));
	t.IpAddress = ip;
	w = FUNC3(f->IpWaitList, &t);
	if (w != NULL)
	{
		FUNC0(f->IpWaitList, w);
		FUNC1(w);
	}

	// Register in the ARP table
	FUNC2(f, ip, mac);
}