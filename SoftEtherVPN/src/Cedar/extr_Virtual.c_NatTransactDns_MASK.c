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
struct TYPE_7__ {int NatDoCancelFlag; int /*<<< orphan*/  NatTable; } ;
typedef  TYPE_1__ VH ;
struct TYPE_8__ {int DnsFinished; int /*<<< orphan*/  lock; struct TYPE_8__* DnsResponseHostName; struct TYPE_8__* DnsTargetHostName; int /*<<< orphan*/ * DnsThread; scalar_t__ DisconnectNow; } ;
typedef  int /*<<< orphan*/  THREAD ;
typedef  TYPE_2__ NAT_ENTRY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  NatDnsThread ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

bool FUNC7(VH *v, NAT_ENTRY *n)
{
	// Validate arguments
	if (v == NULL || n == NULL)
	{
		return true;
	}

	if (n->DisconnectNow)
	{
		goto DISCONNECT;
	}

	if (n->DnsThread == NULL && n->DnsFinished == false)
	{
		// Create a thread
		THREAD *t = FUNC3(NatDnsThread, (void *)n);
		FUNC6(t);
		n->DnsThread = t;
	}
	else
	{
		// Wait for the result
		if (n->DnsFinished)
		{
			// Results have been received
			FUNC5(n->DnsThread, INFINITE);
			FUNC4(n->DnsThread);
			n->DnsThread = NULL;
			// Notify to the main thread
			v->NatDoCancelFlag = true;
		}
	}

	return true;

DISCONNECT:

	// Releasing process
	if (n->DnsThread != NULL)
	{
		FUNC5(n->DnsThread, INFINITE);
		FUNC4(n->DnsThread);
		n->DnsThread = NULL;
	}

	if (n->DnsTargetHostName != NULL)
	{
		FUNC2(n->DnsTargetHostName);
		n->DnsTargetHostName = NULL;
	}

	if (n->DnsResponseHostName != NULL)
	{
		FUNC2(n->DnsResponseHostName);
		n->DnsResponseHostName = NULL;
	}

	FUNC1(n->lock);
	FUNC0(v->NatTable, n);
	FUNC2(n);

	return false;
}