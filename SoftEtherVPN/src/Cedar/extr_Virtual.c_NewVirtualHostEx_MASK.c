#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VH_OPTION ;
struct TYPE_8__ {int IcmpRawSocketOk; int IcmpApiOk; int /*<<< orphan*/ * nat; int /*<<< orphan*/  Counter; int /*<<< orphan*/  lock; int /*<<< orphan*/  ref; } ;
typedef  TYPE_1__ VH ;
struct TYPE_9__ {scalar_t__ IsTtlSupported; } ;
typedef  TYPE_2__ SOCK ;
typedef  int /*<<< orphan*/  NAT ;
typedef  int /*<<< orphan*/  CLIENT_OPTION ;
typedef  int /*<<< orphan*/  CLIENT_AUTH ;
typedef  int /*<<< orphan*/  CEDAR ;

/* Variables and functions */
 int /*<<< orphan*/  IP_PROTO_ICMPV4 ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (int) ; 

VH *FUNC9(CEDAR *cedar, CLIENT_OPTION *option, CLIENT_AUTH *auth, VH_OPTION *vh_option, NAT *nat)
{
	VH *v;
	SOCK *s;
	// Validate arguments
	if (vh_option == NULL)
	{
		return NULL;
	}

	// Create a VH
	v = FUNC8(sizeof(VH));
	v->ref = FUNC4();
	v->lock = FUNC3();
	v->Counter = FUNC2();

	v->nat = nat;

	// Examine whether ICMP Raw Socket can be created
	s = FUNC5(FUNC1(IP_PROTO_ICMPV4), NULL);
	if (s != NULL)
	{
		if (s->IsTtlSupported)
		{
			v->IcmpRawSocketOk = true;
		}

		FUNC6(s);
	}

	if (v->IcmpRawSocketOk == false)
	{
		if (FUNC0())
		{
			v->IcmpApiOk = true;
		}
	}

	// Set the options
	FUNC7(v, vh_option);

	return v;
}