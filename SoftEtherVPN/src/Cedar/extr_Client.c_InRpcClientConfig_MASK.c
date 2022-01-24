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
struct TYPE_4__ {int UseKeepConnect; int AllowRemoteConfig; int /*<<< orphan*/  KeepConnectHost; int /*<<< orphan*/  NicDownOnDisconnect; scalar_t__ KeepConnectInterval; scalar_t__ KeepConnectProtocol; scalar_t__ KeepConnectPort; } ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_1__ CLIENT_CONFIG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 

void FUNC4(CLIENT_CONFIG *c, PACK *p)
{
	// Validate arguments
	if (c == NULL || p == NULL)
	{
		return;
	}

	FUNC3(c, sizeof(CLIENT_CONFIG));
	c->UseKeepConnect = FUNC1(p, "UseKeepConnect") == 0 ? false : true;
	c->KeepConnectPort = FUNC1(p, "KeepConnectPort");
	c->KeepConnectProtocol = FUNC1(p, "KeepConnectProtocol");
	c->KeepConnectInterval = FUNC1(p, "KeepConnectInterval");
	c->AllowRemoteConfig = FUNC1(p, "AllowRemoteConfig") == 0 ? false : true;
	c->NicDownOnDisconnect = FUNC0(p, "NicDownOnDisconnect");
	FUNC2(p, "KeepConnectHost", c->KeepConnectHost, sizeof(c->KeepConnectHost));
}