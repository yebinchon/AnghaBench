#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_7__ {int /*<<< orphan*/  ref; } ;
struct TYPE_6__ {int IsIPsecIPv6; int /*<<< orphan*/  CryptBlockSize; int /*<<< orphan*/ * IkeServer; int /*<<< orphan*/  ThreadList; int /*<<< orphan*/  HaltCompletedEvent; void* TunnelList; void* SendPacketList; TYPE_2__* Cedar; int /*<<< orphan*/  FlushList; } ;
typedef  TYPE_1__ L2TP_SERVER ;
typedef  int /*<<< orphan*/  IKE_SERVER ;
typedef  TYPE_2__ CEDAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__* FUNC5 (int) ; 

L2TP_SERVER *FUNC6(CEDAR *cedar, IKE_SERVER *ike, bool is_ipv6, UINT crypt_block_size)
{
	L2TP_SERVER *l2tp;
	// Validate arguments
	if (cedar == NULL)
	{
		return NULL;
	}

	l2tp = FUNC5(sizeof(L2TP_SERVER));

	l2tp->FlushList = FUNC4();

	l2tp->Cedar = cedar;
	FUNC0(l2tp->Cedar->ref);

	l2tp->SendPacketList = FUNC2(NULL);
	l2tp->TunnelList = FUNC2(NULL);

	l2tp->HaltCompletedEvent = FUNC1();

	l2tp->ThreadList = FUNC3();

	l2tp->IkeServer = ike;

	l2tp->IsIPsecIPv6 = is_ipv6;
	l2tp->CryptBlockSize = crypt_block_size;

	return l2tp;
}