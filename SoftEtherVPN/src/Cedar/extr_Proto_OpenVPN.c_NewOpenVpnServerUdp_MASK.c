#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  Event; int /*<<< orphan*/  Interrupts; } ;
struct TYPE_12__ {TYPE_1__* Server; int /*<<< orphan*/  ref; } ;
struct TYPE_11__ {TYPE_5__* UdpListener; int /*<<< orphan*/  OpenVpnServer; TYPE_3__* Cedar; } ;
struct TYPE_10__ {int /*<<< orphan*/  ListenIP; } ;
typedef  TYPE_2__ OPENVPN_SERVER_UDP ;
typedef  TYPE_3__ CEDAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPENVPN_PROTOCOL_UDP ; 
 int /*<<< orphan*/  OpenVpnServerUdpListenerProc ; 
 TYPE_2__* FUNC3 (int) ; 

OPENVPN_SERVER_UDP *FUNC4(CEDAR *cedar)
{
	OPENVPN_SERVER_UDP *u;
	// Validate arguments
	if (cedar == NULL)
	{
		return NULL;
	}

	u = FUNC3(sizeof(OPENVPN_SERVER_UDP));

	u->Cedar = cedar;

	FUNC0(u->Cedar->ref);

	// Create a UDP listener
	u->UdpListener = FUNC2(OpenVpnServerUdpListenerProc, u, &cedar->Server->ListenIP, OPENVPN_PROTOCOL_UDP);

	// Create an OpenVPN server
	u->OpenVpnServer = FUNC1(cedar, u->UdpListener->Interrupts, u->UdpListener->Event);

	return u;
}