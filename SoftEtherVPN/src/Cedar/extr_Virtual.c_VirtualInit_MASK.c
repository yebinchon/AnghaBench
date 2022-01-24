#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int flag1; int Active; scalar_t__ CurrentIpQuota; scalar_t__ NextArpTablePolling; scalar_t__ DhcpId; TYPE_1__* Counter; int /*<<< orphan*/  SendQueue; int /*<<< orphan*/  Cancel; int /*<<< orphan*/ * Logger; } ;
typedef  TYPE_2__ VH ;
typedef  scalar_t__ UINT64 ;
struct TYPE_12__ {scalar_t__ c; } ;

/* Variables and functions */
 scalar_t__ ARP_ENTRY_POLLING_TIME ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 

bool FUNC11(VH *v)
{
	// Initialize the log
	v->Logger = NULL;

	FUNC6(v);
	{
		// Initialize
		v->Cancel = FUNC7();
		v->SendQueue = FUNC8();
	}
	FUNC10(v);

	// Counter reset
	v->Counter->c = 0;
	v->DhcpId = 0;

	// Initialize the ARP table
	FUNC0(v);

	// Initialize the ARP waiting table
	FUNC1(v);

	// Initialize the IP waiting table
	FUNC4(v);

	// Initialize the IP combining list
	FUNC3(v);

	// Initialize the NAT
	FUNC5(v);

	// Initialize the DHCP server
	FUNC2(v);

	// Other initialization
	v->flag1 = false;
	v->NextArpTablePolling = FUNC9() + (UINT64)ARP_ENTRY_POLLING_TIME;
	v->CurrentIpQuota = 0;
	v->Active = true;

	return true;
}