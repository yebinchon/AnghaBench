#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  NatTable; int /*<<< orphan*/  NativeNat; } ;
typedef  TYPE_1__ VH ;
typedef  scalar_t__ UINT ;
struct TYPE_15__ {int Protocol; } ;
typedef  TYPE_2__ NAT_ENTRY ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
#define  NAT_DNS 131 
#define  NAT_ICMP 130 
#define  NAT_TCP 129 
#define  NAT_UDP 128 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_2__*) ; 

void FUNC8(VH *v)
{
	UINT i;
	// Validate arguments
	if (v == NULL)
	{
		return;
	}

	if (FUNC2(v))
	{
		// Poll whether the packet comes from native NAT
		FUNC3(v->NativeNat);
	}

	// Process by scanning the all NAT entries
	for (i = 0;i < FUNC1(v->NatTable);i++)
	{
		NAT_ENTRY *n = FUNC0(v->NatTable, i);

		switch (n->Protocol)
		{
		case NAT_TCP:
			FUNC6(v, n);
			break;

		case NAT_UDP:
			FUNC7(v, n);
			break;

		case NAT_ICMP:
			FUNC5(v, n);
			break;

		case NAT_DNS:
			FUNC4(v, n);
			break;
		}
	}
}