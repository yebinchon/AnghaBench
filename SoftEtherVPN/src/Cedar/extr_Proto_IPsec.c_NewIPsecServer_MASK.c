#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
struct TYPE_16__ {TYPE_1__* Server; int /*<<< orphan*/  ref; } ;
struct TYPE_15__ {int /*<<< orphan*/  OsServiceCheckThread; int /*<<< orphan*/  OsServiceCheckThreadEvent; int /*<<< orphan*/  EtherIPIdList; int /*<<< orphan*/  UdpListener; TYPE_10__* Ike; int /*<<< orphan*/  L2TP; TYPE_3__* Cedar; int /*<<< orphan*/  LockSettings; } ;
struct TYPE_14__ {int /*<<< orphan*/  ListenIP; } ;
struct TYPE_13__ {int /*<<< orphan*/  Secret; } ;
typedef  TYPE_2__ IPSEC_SERVER ;
typedef  TYPE_3__ CEDAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CmpEtherIPId ; 
 int /*<<< orphan*/  IPSEC_DEFAULT_SECRET ; 
 int /*<<< orphan*/  IPsecOsServiceCheckThread ; 
 int /*<<< orphan*/  IPsecServerUdpPacketRecvProc ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_10__* FUNC2 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC9 (int) ; 

IPSEC_SERVER *FUNC10(CEDAR *cedar)
{
	IPSEC_SERVER *s;
	// Validate arguments
	if (cedar == NULL)
	{
		return NULL;
	}

	s = FUNC9(sizeof(IPSEC_SERVER));

	s->LockSettings = FUNC5();

	s->Cedar = cedar;

	FUNC0(s->Cedar->ref);

	s->L2TP = FUNC3(cedar);

	s->Ike = FUNC2(cedar, s);
	FUNC8(s->Ike->Secret, sizeof(s->Ike->Secret), IPSEC_DEFAULT_SECRET);

	s->UdpListener = FUNC7(IPsecServerUdpPacketRecvProc, s, &cedar->Server->ListenIP);

	s->EtherIPIdList = FUNC4(CmpEtherIPId);

	// Start an OS service monitoring thread
	s->OsServiceCheckThreadEvent = FUNC1();
	s->OsServiceCheckThread = FUNC6(IPsecOsServiceCheckThread, s);

	return s;
}