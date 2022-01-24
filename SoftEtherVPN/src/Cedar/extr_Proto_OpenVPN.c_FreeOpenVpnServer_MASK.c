#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  UDPPACKET ;
struct TYPE_5__ {int /*<<< orphan*/  Dh; int /*<<< orphan*/  SendPacketList; int /*<<< orphan*/  RecvPacketList; int /*<<< orphan*/  SessionList; } ;
typedef  int /*<<< orphan*/  OPENVPN_SESSION ;
typedef  TYPE_1__ OPENVPN_SERVER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(OPENVPN_SERVER *s)
{
	UINT i;
	// Validate arguments
	if (s == NULL)
	{
		return;
	}

	FUNC6(s, NULL, NULL, "LO_STOP");

	// Release the sessions list
	for (i = 0; i < FUNC4(s->SessionList); ++i)
	{
		OPENVPN_SESSION *se = FUNC3(s->SessionList, i);
		FUNC5(se);
	}

	FUNC7(s->SessionList);

	// Release the incoming packets list
	for (i = 0; i < FUNC4(s->RecvPacketList); ++i)
	{
		UDPPACKET *p = FUNC3(s->RecvPacketList, i);
		FUNC2(p);
	}

	FUNC7(s->RecvPacketList);

	// Release the outgoing packets list
	for (i = 0; i < FUNC4(s->SendPacketList); ++i)
	{
		UDPPACKET *p = FUNC3(s->SendPacketList, i);
		FUNC2(p);
	}

	FUNC7(s->SendPacketList);

	FUNC0(s->Dh);

	FUNC1(s);
}