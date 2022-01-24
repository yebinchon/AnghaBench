#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int PollMyIpAndPort; scalar_t__ Param; } ;
typedef  TYPE_2__ UDPLISTENER ;
struct TYPE_10__ {int /*<<< orphan*/  SendPacketList; } ;
struct TYPE_9__ {TYPE_5__* OpenVpnServer; TYPE_1__* Cedar; } ;
struct TYPE_7__ {int /*<<< orphan*/  OpenVPNPublicPorts; } ;
typedef  TYPE_3__ OPENVPN_SERVER_UDP ;
typedef  int /*<<< orphan*/  LIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 

void FUNC4(UDPLISTENER *u, LIST *packet_list)
{
	OPENVPN_SERVER_UDP *us;
	// Validate arguments
	if (u == NULL || packet_list == NULL)
	{
		return;
	}

	us = (OPENVPN_SERVER_UDP *)u->Param;

	if (us->OpenVpnServer != NULL)
	{
		{
			u->PollMyIpAndPort = false;

			FUNC0(us->Cedar->OpenVPNPublicPorts, sizeof(us->Cedar->OpenVPNPublicPorts));
		}

		FUNC2(us->OpenVpnServer, packet_list);

		FUNC3(u, us->OpenVpnServer->SendPacketList);
		FUNC1(us->OpenVpnServer->SendPacketList);
	}
}