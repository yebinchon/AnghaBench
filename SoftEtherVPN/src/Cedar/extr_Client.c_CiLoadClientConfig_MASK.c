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
struct TYPE_3__ {void* NicDownOnDisconnect; void* NoChangeWcmNetworkSettingOnWindows8; int /*<<< orphan*/  KeepConnectInterval; void* AllowRemoteConfig; void* KeepConnectProtocol; void* KeepConnectPort; int /*<<< orphan*/  KeepConnectHost; void* UseKeepConnect; } ;
typedef  int /*<<< orphan*/  FOLDER ;
typedef  TYPE_1__ CLIENT_CONFIG ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  KEEP_INTERVAL_MAX ; 
 int /*<<< orphan*/  KEEP_INTERVAL_MIN ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(CLIENT_CONFIG *c, FOLDER *f)
{
	// Validate arguments
	if (c == NULL || f == NULL)
	{
		return;
	}

	c->UseKeepConnect = FUNC0(f, "UseKeepConnect");
	FUNC2(f, "KeepConnectHost", c->KeepConnectHost, sizeof(c->KeepConnectHost));
	c->KeepConnectPort = FUNC1(f, "KeepConnectPort");
	c->KeepConnectProtocol = FUNC1(f, "KeepConnectProtocol");
	c->AllowRemoteConfig = FUNC0(f, "AllowRemoteConfig");
	c->KeepConnectInterval = FUNC3(FUNC1(f, "KeepConnectInterval"), KEEP_INTERVAL_MIN, KEEP_INTERVAL_MAX);
	c->NoChangeWcmNetworkSettingOnWindows8 = FUNC0(f, "NoChangeWcmNetworkSettingOnWindows8");
	c->NicDownOnDisconnect = FUNC0(f, "NicDownOnDisconnect");
}