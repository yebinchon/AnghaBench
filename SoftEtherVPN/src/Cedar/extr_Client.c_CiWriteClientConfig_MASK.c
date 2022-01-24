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
struct TYPE_3__ {int /*<<< orphan*/  NicDownOnDisconnect; int /*<<< orphan*/  NoChangeWcmNetworkSettingOnWindows8; int /*<<< orphan*/  KeepConnectInterval; int /*<<< orphan*/  AllowRemoteConfig; int /*<<< orphan*/  KeepConnectProtocol; int /*<<< orphan*/  KeepConnectPort; int /*<<< orphan*/  KeepConnectHost; int /*<<< orphan*/  UseKeepConnect; } ;
typedef  int /*<<< orphan*/  FOLDER ;
typedef  TYPE_1__ CLIENT_CONFIG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

void FUNC3(FOLDER *cc, CLIENT_CONFIG *config)
{
	// Validate arguments
	if (cc == NULL || config == NULL)
	{
		return;
	}

	FUNC0(cc, "UseKeepConnect", config->UseKeepConnect);
	FUNC2(cc, "KeepConnectHost", config->KeepConnectHost);
	FUNC1(cc, "KeepConnectPort", config->KeepConnectPort);
	FUNC1(cc, "KeepConnectProtocol", config->KeepConnectProtocol);
	FUNC0(cc, "AllowRemoteConfig", config->AllowRemoteConfig);
	FUNC1(cc, "KeepConnectInterval", config->KeepConnectInterval);
	FUNC0(cc, "NoChangeWcmNetworkSettingOnWindows8", config->NoChangeWcmNetworkSettingOnWindows8);
	FUNC0(cc, "NicDownOnDisconnect", config->NicDownOnDisconnect);
}