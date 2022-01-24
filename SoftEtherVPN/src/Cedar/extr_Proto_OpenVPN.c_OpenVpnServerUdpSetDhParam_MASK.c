#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* OpenVpnServer; } ;
struct TYPE_4__ {int /*<<< orphan*/ * Dh; } ;
typedef  TYPE_2__ OPENVPN_SERVER_UDP ;
typedef  int /*<<< orphan*/  DH_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(OPENVPN_SERVER_UDP *u, DH_CTX *dh)
{
	// Validate arguments
	if (u == NULL) {
		return;
	}

	if (u->OpenVpnServer->Dh)
	{
		FUNC0(u->OpenVpnServer->Dh);
	}

	u->OpenVpnServer->Dh = dh;
}