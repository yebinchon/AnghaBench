#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int KeepConnectInterval; scalar_t__ KeepConnectProtocol; int /*<<< orphan*/  KeepConnectPort; int /*<<< orphan*/  KeepConnectHost; } ;
struct TYPE_14__ {int /*<<< orphan*/  AccountList; int /*<<< orphan*/  UnixVLanList; TYPE_8__ Config; TYPE_1__* Keep; int /*<<< orphan*/  lock; } ;
struct TYPE_13__ {int KeepConnectPort; scalar_t__ NicDownOnDisconnect; scalar_t__ UseKeepConnect; int /*<<< orphan*/  KeepConnectHost; } ;
struct TYPE_12__ {int Interval; int UdpMode; int Enable; int /*<<< orphan*/  lock; int /*<<< orphan*/  ServerPort; int /*<<< orphan*/  ServerName; } ;
typedef  TYPE_1__ KEEP ;
typedef  TYPE_2__ CLIENT_CONFIG ;
typedef  TYPE_3__ CLIENT ;

/* Variables and functions */
 scalar_t__ CONNECTION_UDP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  ERR_INVALID_PARAMETER ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

bool FUNC11(CLIENT *c, CLIENT_CONFIG *o)
{
	KEEP *k;
	// Validate arguments
	if (c == NULL || o == NULL)
	{
		return false;
	}

	if (o->UseKeepConnect)
	{
		if (FUNC5(o->KeepConnectHost) ||
			o->KeepConnectPort == 0 ||
			o->KeepConnectPort >= 65536)
		{
			FUNC1(c, ERR_INVALID_PARAMETER);
			return false;
		}
	}

	FUNC6(c->lock);
	{
		FUNC2(&c->Config, o, sizeof(CLIENT_CONFIG));
	}
	FUNC9(c->lock);

	// Save the settings
	FUNC0(c);

	// Apply the Keep Connect
	k = c->Keep;
	FUNC6(k->lock);
	{
		if (o->UseKeepConnect)
		{
			FUNC8(k->ServerName, sizeof(k->ServerName), c->Config.KeepConnectHost);
			k->ServerPort = c->Config.KeepConnectPort;
			k->Interval = c->Config.KeepConnectInterval * 1000;
			k->UdpMode = (c->Config.KeepConnectProtocol == CONNECTION_UDP) ? true : false;
			k->Enable = true;
		}
		else
		{
			k->Enable = false;
		}
	}
	FUNC9(k->lock);

	// Apply TAP state
	FUNC7(c->AccountList);
	FUNC7(c->UnixVLanList);
	if (o->NicDownOnDisconnect)
	{
		FUNC3(c);
	}
	else
	{
		FUNC4(c);
	}
	FUNC10(c->UnixVLanList);
	FUNC10(c->AccountList);

	return true;
}