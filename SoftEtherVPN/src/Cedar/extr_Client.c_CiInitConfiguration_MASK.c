#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  OsType; } ;
struct TYPE_8__ {int AllowRemoteConfig; int UseKeepConnect; int /*<<< orphan*/  KeepConnectInterval; int /*<<< orphan*/  KeepConnectProtocol; int /*<<< orphan*/  KeepConnectPort; int /*<<< orphan*/  KeepConnectHost; } ;
struct TYPE_9__ {int /*<<< orphan*/  Logger; int /*<<< orphan*/  Eraser; TYPE_1__ Config; int /*<<< orphan*/  EncryptedPassword; void* UnixVLanList; void* AccountList; } ;
typedef  TYPE_2__ CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  CLIENT_DEFAULT_KEEPALIVE_HOST ; 
 int /*<<< orphan*/  CLIENT_DEFAULT_KEEPALIVE_INTERVAL ; 
 int /*<<< orphan*/  CLIENT_DEFAULT_KEEPALIVE_PORT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  CONNECTION_UDP ; 
 int /*<<< orphan*/  CiCompareAccount ; 
 int /*<<< orphan*/  CiCompareUnixVLan ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_3__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 

void FUNC10(CLIENT *c)
{
	// Validate arguments
	if (c == NULL)
	{
		return;
	}

#ifdef	OS_UNIX
	// Initialize the VLAN
	UnixVLanInit();
#endif	 // OS_UNIX

	// Account list
	c->AccountList = FUNC5(CiCompareAccount);

	// Unix version VLAN list
	if (FUNC6(FUNC3()->OsType))
	{
		c->UnixVLanList = FUNC5(CiCompareUnixVLan);
	}

	// Read the configuration file
	FUNC0(c, "LC_LOAD_CONFIG_1");
	if (FUNC1(c) == false)
	{
		FUNC0(c, "LC_LOAD_CONFIG_3");
		// Do the initial setup because the configuration file does not exist
		// Clear the password
		FUNC7(c->EncryptedPassword, "", 0);
		// Initialize the client configuration
		// Disable remote management
		c->Config.AllowRemoteConfig = false;
		FUNC8(c->Config.KeepConnectHost, sizeof(c->Config.KeepConnectHost), CLIENT_DEFAULT_KEEPALIVE_HOST);
		c->Config.KeepConnectPort = CLIENT_DEFAULT_KEEPALIVE_PORT;
		c->Config.KeepConnectProtocol = CONNECTION_UDP;
		c->Config.KeepConnectInterval = CLIENT_DEFAULT_KEEPALIVE_INTERVAL;
		c->Config.UseKeepConnect = false;	// Don't use the connection maintenance function by default in the Client
		// Eraser
		c->Eraser = FUNC4(c->Logger, 0);
	}
	else
	{
		FUNC0(c, "LC_LOAD_CONFIG_2");
	}

	// Appropriate setting for virtual LAN card
	FUNC2(c);
}