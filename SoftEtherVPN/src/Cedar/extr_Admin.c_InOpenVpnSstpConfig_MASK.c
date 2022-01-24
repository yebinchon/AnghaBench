#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  OpenVPNObfuscationMask; void* OpenVPNObfuscation; int /*<<< orphan*/  OpenVPNPortList; void* EnableSSTP; void* EnableOpenVPN; } ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_1__ OPENVPN_SSTP_CONFIG ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 

void FUNC3(OPENVPN_SSTP_CONFIG *t, PACK *p)
{
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC2(t, sizeof(OPENVPN_SSTP_CONFIG));

	t->EnableOpenVPN = FUNC0(p, "EnableOpenVPN");
	t->EnableSSTP = FUNC0(p, "EnableSSTP");
	FUNC1(p, "OpenVPNPortList", t->OpenVPNPortList, sizeof(t->OpenVPNPortList));
	t->OpenVPNObfuscation= FUNC0(p, "OpenVPNObfuscation");
	FUNC1(p, "OpenVPNObfuscationMask", t->OpenVPNObfuscationMask, sizeof(t->OpenVPNObfuscationMask));
}