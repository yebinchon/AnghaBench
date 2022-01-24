#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int NatDoCancelFlag; TYPE_2__** TmpBuf; int /*<<< orphan*/  NatTable; scalar_t__ HaltNat; int /*<<< orphan*/  Cancel; int /*<<< orphan*/  Now; int /*<<< orphan*/  SockEvent; } ;
typedef  TYPE_1__ VH ;
typedef  scalar_t__ UINT ;
struct TYPE_19__ {int Protocol; int DisconnectNow; } ;
typedef  TYPE_2__ NAT_ENTRY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__**) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_2__** FUNC5 (int /*<<< orphan*/ ) ; 
#define  NAT_DNS 131 
#define  NAT_ICMP 130 
#define  NAT_TCP 129 
 int /*<<< orphan*/  NAT_TMPBUF_SIZE ; 
#define  NAT_UDP 128 
 int FUNC6 (TYPE_1__*,TYPE_2__*) ; 
 int FUNC7 (TYPE_1__*,TYPE_2__*) ; 
 int FUNC8 (TYPE_1__*,TYPE_2__*) ; 
 int FUNC9 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  SELECT_TIME ; 
 int /*<<< orphan*/  FUNC10 () ; 
 TYPE_2__** FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC14(VH *v)
{
	bool halt_flag;
	// Validate arguments
	if (v == NULL)
	{
		return;
	}

	v->TmpBuf = FUNC5(NAT_TMPBUF_SIZE);

	while (true)
	{
		// Wait until the next event is set
		FUNC13(v->SockEvent, SELECT_TIME);

		halt_flag = false;

		FUNC4(v);
		{
			// Process on all NAT sessions
			UINT i, num;

			v->Now = FUNC10();
			v->NatDoCancelFlag = false;

LIST_ELEMENT_DELETED:
			num = FUNC3(v->NatTable);
			for (i = 0;i < num;i++)
			{
				NAT_ENTRY *n = FUNC2(v->NatTable, i);

				switch (n->Protocol)
				{
				case NAT_TCP:		// TCP
					if (FUNC8(v, n) == false)
					{
						goto LIST_ELEMENT_DELETED;
					}
					break;

				case NAT_UDP:		// UDP
					if (FUNC9(v, n) == false)
					{
						goto LIST_ELEMENT_DELETED;
					}
					break;

				case NAT_ICMP:		// ICMP
					if (FUNC7(v, n) == false)
					{
						goto LIST_ELEMENT_DELETED;
					}
					break;

				case NAT_DNS:		// DNS
					if (FUNC6(v, n) == false)
					{
						goto LIST_ELEMENT_DELETED;
					}
					break;
				}
			}

			if (v->NatDoCancelFlag)
			{
				// Hit the cancel of the parent thread
				FUNC0(v->Cancel);
			}

			// Halting flag check
			if (v->HaltNat)
			{
				halt_flag = true;
			}
		}
		FUNC12(v);

		if (halt_flag)
		{
			// Terminate the thread by disconnecting all entries forcibly
			FUNC4(v);
			{
				UINT num = FUNC3(v->NatTable);
				NAT_ENTRY **nn = FUNC11(v->NatTable);
				UINT i;

				for (i = 0;i < num;i++)
				{
					NAT_ENTRY *n = nn[i];
					n->DisconnectNow = true;

					switch (n->Protocol)
					{
					case NAT_TCP:		// TCP
						FUNC8(v, n);
						break;

					case NAT_UDP:		// UDP
						FUNC9(v, n);
						break;

					case NAT_ICMP:		// ICMP
						FUNC7(v, n);
						break;

					case NAT_DNS:		// DNS
						FUNC6(v, n);
						break;
					}
				}

				FUNC1(nn);
			}
			FUNC12(v);
			break;
		}
	}

	FUNC1(v->TmpBuf);
}