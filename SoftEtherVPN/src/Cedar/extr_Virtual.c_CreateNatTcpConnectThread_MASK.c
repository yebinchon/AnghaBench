#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VH ;
struct TYPE_3__ {int /*<<< orphan*/  NatTcpConnectThread; } ;
typedef  TYPE_1__ NAT_ENTRY ;

/* Variables and functions */
 int /*<<< orphan*/  NatTcpConnectThread ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(VH *v, NAT_ENTRY *n)
{
	// Validate arguments
	if (v == NULL || n == NULL)
	{
		return;
	}

	// Create a thread
	n->NatTcpConnectThread = FUNC0(NatTcpConnectThread, (void *)n);

	// Wait for a thread initialization completion
	FUNC1(n->NatTcpConnectThread);
}