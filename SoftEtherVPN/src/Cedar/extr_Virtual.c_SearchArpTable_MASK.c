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
struct TYPE_7__ {int /*<<< orphan*/  ArpTable; } ;
typedef  TYPE_1__ VH ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_8__ {int /*<<< orphan*/  IpAddress; } ;
typedef  TYPE_2__ ARP_ENTRY ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 

ARP_ENTRY *FUNC1(VH *v, UINT ip)
{
	ARP_ENTRY *e, t;
	// Validate arguments
	if (v == NULL)
	{
		return NULL;
	}

	t.IpAddress = ip;
	e = FUNC0(v->ArpTable, &t);

	return e;
}