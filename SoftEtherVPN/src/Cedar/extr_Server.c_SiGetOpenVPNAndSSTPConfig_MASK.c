#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int EnableOpenVPN; int EnableSSTP; int /*<<< orphan*/  OpenVPNObfuscationMask; int /*<<< orphan*/  OpenVPNObfuscation; int /*<<< orphan*/  OpenVPNPortList; } ;
struct TYPE_8__ {int DisableOpenVPNServer; int DisableSSTPServer; int /*<<< orphan*/  OpenVpnSstpConfigLock; TYPE_1__* Cedar; int /*<<< orphan*/  OpenVpnServerUdpPorts; } ;
struct TYPE_7__ {int /*<<< orphan*/  OpenVPNObfuscationMask; int /*<<< orphan*/  OpenVPNObfuscation; } ;
typedef  TYPE_2__ SERVER ;
typedef  TYPE_3__ OPENVPN_SSTP_CONFIG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 

void FUNC4(SERVER *s, OPENVPN_SSTP_CONFIG *c)
{
	// Validate arguments
	if (s == NULL || c == NULL)
	{
		return;
	}

	FUNC3(c, sizeof(OPENVPN_SSTP_CONFIG));

	FUNC0(s->OpenVpnSstpConfigLock);
	{
		if (s->DisableOpenVPNServer == false)
		{
			c->EnableOpenVPN = true;
		}

		if (s->DisableSSTPServer == false)
		{
			c->EnableSSTP = true;
		}

		FUNC1(c->OpenVPNPortList, sizeof(c->OpenVPNPortList), s->OpenVpnServerUdpPorts);

		c->OpenVPNObfuscation = s->Cedar->OpenVPNObfuscation;
		FUNC1(c->OpenVPNObfuscationMask, sizeof(c->OpenVPNObfuscationMask), s->Cedar->OpenVPNObfuscationMask);
	}
	FUNC2(s->OpenVpnSstpConfigLock);
}