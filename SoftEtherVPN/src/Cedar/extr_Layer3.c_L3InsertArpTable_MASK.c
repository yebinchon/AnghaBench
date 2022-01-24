#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  t ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_12__ {int IpAddress; scalar_t__ Expire; int /*<<< orphan*/  MacAddress; } ;
struct TYPE_11__ {int /*<<< orphan*/  ArpTable; } ;
typedef  TYPE_1__ L3IF ;
typedef  TYPE_2__ L3ARPENTRY ;

/* Variables and functions */
 scalar_t__ ARP_ENTRY_EXPIRES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int,TYPE_2__*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 TYPE_2__* FUNC6 (int) ; 

void FUNC7(L3IF *f, UINT ip, UCHAR *mac)
{
	L3ARPENTRY *a, t;
	// Validate arguments
	if (f == NULL || ip == 0 || ip == 0xffffffff || mac == NULL)
	{
		return;
	}

	FUNC5(&t, sizeof(t));
	t.IpAddress = ip;

	a = FUNC3(f->ArpTable, &t);

	if (a == NULL)
	{
		// Since this is not registered, register this
		a = FUNC6(sizeof(L3ARPENTRY));
		a->IpAddress = ip;
		FUNC0(a->MacAddress, mac, 6);
		FUNC1(f->ArpTable, a);
	}

	// Extend the expiration date
	a->Expire = FUNC4() + ARP_ENTRY_EXPIRES;

	// Send waiting IP packets
	FUNC2(f, mac, ip, a);
}