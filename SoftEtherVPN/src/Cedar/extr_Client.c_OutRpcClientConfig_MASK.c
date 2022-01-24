#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  KeepConnectHost; int /*<<< orphan*/  NicDownOnDisconnect; int /*<<< orphan*/  AllowRemoteConfig; int /*<<< orphan*/  KeepConnectInterval; int /*<<< orphan*/  KeepConnectProtocol; int /*<<< orphan*/  KeepConnectPort; int /*<<< orphan*/  UseKeepConnect; } ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_1__ CLIENT_CONFIG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

void FUNC3(PACK *p, CLIENT_CONFIG *c)
{
	// Validate arguments
	if (c == NULL || p == NULL)
	{
		return;
	}

	FUNC1(p, "UseKeepConnect", c->UseKeepConnect);
	FUNC1(p, "KeepConnectPort", c->KeepConnectPort);
	FUNC1(p, "KeepConnectProtocol", c->KeepConnectProtocol);
	FUNC1(p, "KeepConnectInterval", c->KeepConnectInterval);
	FUNC1(p, "AllowRemoteConfig", c->AllowRemoteConfig);
	FUNC0(p, "NicDownOnDisconnect", c->NicDownOnDisconnect);
	FUNC2(p, "KeepConnectHost", c->KeepConnectHost);
}