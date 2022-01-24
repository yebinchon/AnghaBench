#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  OpenVPNObfuscationMask; int /*<<< orphan*/  OpenVPNObfuscation; int /*<<< orphan*/  OpenVPNPortList; int /*<<< orphan*/  EnableOpenVPN; int /*<<< orphan*/  EnableSSTP; } ;
struct TYPE_7__ {scalar_t__ ServerType; int DisableSSTPServer; int DisableOpenVPNServer; char* OpenVpnServerUdpPorts; int /*<<< orphan*/  OpenVpnSstpConfigLock; int /*<<< orphan*/  ListenIP; int /*<<< orphan*/ * OpenVpnServerUdp; TYPE_1__* Cedar; } ;
struct TYPE_6__ {int /*<<< orphan*/  OpenVPNObfuscationMask; int /*<<< orphan*/  OpenVPNObfuscation; scalar_t__ Bridge; } ;
typedef  TYPE_2__ SERVER ;
typedef  TYPE_3__ OPENVPN_SSTP_CONFIG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ SERVER_TYPE_STANDALONE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(SERVER *s, OPENVPN_SSTP_CONFIG *c)
{
	// Validate arguments
	if (s == NULL || c == NULL)
	{
		return;
	}

	FUNC0(s->OpenVpnSstpConfigLock);
	{
		// Save the settings
		if (s->Cedar->Bridge || s->ServerType != SERVER_TYPE_STANDALONE)
		{
			s->DisableSSTPServer = true;
			s->DisableOpenVPNServer = true;
		}
		else
		{
			s->DisableSSTPServer = !c->EnableSSTP;
			s->DisableOpenVPNServer = !c->EnableOpenVPN;
		}

		FUNC1(s->OpenVpnServerUdpPorts, sizeof(s->OpenVpnServerUdpPorts),
			c->OpenVPNPortList, true, ", ");

		s->Cedar->OpenVPNObfuscation = c->OpenVPNObfuscation;
		FUNC3(s->Cedar->OpenVPNObfuscationMask, sizeof(s->Cedar->OpenVPNObfuscationMask), c->OpenVPNObfuscationMask);

		// Apply the OpenVPN configuration
		if (s->OpenVpnServerUdp != NULL)
		{
			if (s->DisableOpenVPNServer)
			{
				FUNC2(s->OpenVpnServerUdp, "", NULL);
			}
			else
			{
				FUNC2(s->OpenVpnServerUdp, s->OpenVpnServerUdpPorts, &s->ListenIP);
			}
		}
	}
	FUNC4(s->OpenVpnSstpConfigLock);
}