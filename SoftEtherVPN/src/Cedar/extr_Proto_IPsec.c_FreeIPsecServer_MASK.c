#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sl ;
typedef  scalar_t__ UINT ;
struct TYPE_7__ {int NoMoreChangeSettings; int Halt; int /*<<< orphan*/  LockSettings; int /*<<< orphan*/  OsServiceCheckThreadEvent; int /*<<< orphan*/  OsServiceCheckThread; int /*<<< orphan*/  EtherIPIdList; int /*<<< orphan*/  Ike; int /*<<< orphan*/  L2TP; int /*<<< orphan*/  Cedar; int /*<<< orphan*/  UdpListener; } ;
typedef  int /*<<< orphan*/  IPSEC_SERVICES ;
typedef  TYPE_1__ IPSEC_SERVER ;
typedef  TYPE_1__ ETHERIP_ID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int) ; 

void FUNC17(IPSEC_SERVER *s)
{
	UINT i;
	IPSEC_SERVICES sl;
	// Validate arguments
	if (s == NULL)
	{
		return;
	}

	s->NoMoreChangeSettings = true;

	// Stopp the L2TP server
	FUNC14(s->L2TP, false);

	// Stop the IKE server
	FUNC13(s->Ike);

	// Stop all the services explicitly
	FUNC16(&sl, sizeof(sl));
	FUNC5(s, &sl);

	// Releasing process
	FUNC4(s->UdpListener);

	FUNC8(s->Cedar);

	FUNC3(s->L2TP);

	FUNC2(s->Ike);

	for (i = 0;i < FUNC7(s->EtherIPIdList);i++)
	{
		ETHERIP_ID *k = FUNC6(s->EtherIPIdList, i);

		FUNC1(k);
	}

	FUNC10(s->EtherIPIdList);

	// Stop the OS monitoring thread
	s->Halt = true;
	FUNC12(s->OsServiceCheckThreadEvent);
	FUNC15(s->OsServiceCheckThread, INFINITE);
	FUNC11(s->OsServiceCheckThread);
	FUNC9(s->OsServiceCheckThreadEvent);

	FUNC0(s->LockSettings);

	FUNC1(s);
}