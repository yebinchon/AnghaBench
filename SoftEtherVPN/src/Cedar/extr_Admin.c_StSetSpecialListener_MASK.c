#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_11__ {TYPE_1__* Server; } ;
struct TYPE_10__ {scalar_t__ VpnOverIcmpListener; scalar_t__ VpnOverDnsListener; } ;
struct TYPE_9__ {scalar_t__ EnableVpnOverIcmp; scalar_t__ EnableVpnOverDns; int /*<<< orphan*/ * Cedar; } ;
typedef  TYPE_1__ SERVER ;
typedef  TYPE_2__ RPC_SPECIAL_LISTENER ;
typedef  int /*<<< orphan*/  CEDAR ;
typedef  TYPE_3__ ADMIN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  ERR_NO_ERROR ; 
 int /*<<< orphan*/  ERR_SPECIAL_LISTENER_DNS_ERROR ; 
 int /*<<< orphan*/  ERR_SPECIAL_LISTENER_ICMP_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  NO_SUPPORT_FOR_BRIDGE ; 
 int /*<<< orphan*/  SERVER_ADMIN_ONLY ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 () ; 
 int FUNC5 () ; 

UINT FUNC6(ADMIN *a, RPC_SPECIAL_LISTENER *t)
{
	SERVER *s = a->Server;
	CEDAR *c = s->Cedar;
	UINT ret = ERR_NO_ERROR;

	SERVER_ADMIN_ONLY;
	NO_SUPPORT_FOR_BRIDGE;

	// Check ports
	if (t->VpnOverDnsListener && (FUNC2(s->EnableVpnOverDns) != FUNC2(t->VpnOverDnsListener)))
	{
		if (FUNC4() == false)
		{
			return ERR_SPECIAL_LISTENER_DNS_ERROR;
		}
	}

	if (t->VpnOverIcmpListener && (FUNC2(s->EnableVpnOverIcmp) != FUNC2(t->VpnOverIcmpListener)))
	{
		if (FUNC5() == false)
		{
			return ERR_SPECIAL_LISTENER_ICMP_ERROR;
		}
	}

	s->EnableVpnOverDns = t->VpnOverDnsListener;
	s->EnableVpnOverIcmp = t->VpnOverIcmpListener;

	FUNC3(s);

	FUNC0(a, NULL, "LA_SET_SPECIAL_LISTENER");

	FUNC1(s);

	return ERR_NO_ERROR;
}