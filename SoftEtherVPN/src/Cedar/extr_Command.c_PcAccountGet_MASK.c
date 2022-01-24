#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  args ;
typedef  scalar_t__ UINT ;
struct TYPE_14__ {char* member_0; int /*<<< orphan*/ * member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/ * member_2; int /*<<< orphan*/  member_1; } ;
struct TYPE_13__ {int /*<<< orphan*/  RemoteClient; } ;
struct TYPE_12__ {TYPE_2__* ClientOption; TYPE_1__* ClientAuth; scalar_t__ RetryOnServerCert; scalar_t__ CheckServerCert; int /*<<< orphan*/ * ServerCert; int /*<<< orphan*/ * AccountName; } ;
struct TYPE_11__ {scalar_t__ ProxyType; scalar_t__ NoUdpAcceleration; scalar_t__ DisableQoS; scalar_t__ NoRoutingTracking; scalar_t__ RequireMonitorMode; scalar_t__ RequireBridgeRoutingMode; scalar_t__ UseCompress; scalar_t__ UseEncrypt; scalar_t__ HalfConnection; int /*<<< orphan*/  ConnectionDisconnectSpan; int /*<<< orphan*/  AdditionalConnectionInterval; int /*<<< orphan*/  MaxConnection; int /*<<< orphan*/  DeviceName; int /*<<< orphan*/  ProxyUsername; int /*<<< orphan*/  ProxyPort; int /*<<< orphan*/  ProxyName; int /*<<< orphan*/  HubName; int /*<<< orphan*/  Port; int /*<<< orphan*/  Hostname; int /*<<< orphan*/ * AccountName; } ;
struct TYPE_10__ {scalar_t__ AuthType; int /*<<< orphan*/ * ClientX; int /*<<< orphan*/  Username; } ;
typedef  TYPE_3__ RPC_CLIENT_GET_ACCOUNT ;
typedef  TYPE_4__ PC ;
typedef  TYPE_5__ PARAM ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  CT ;
typedef  int /*<<< orphan*/  CONSOLE ;

/* Variables and functions */
 scalar_t__ CLIENT_AUTHTYPE_CERT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  CmdEvalNotEmpty ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  CmdPrompt ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC10 (scalar_t__) ; 
 int MAX_SIZE ; 
 scalar_t__ PROXY_DIRECT ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,int) ; 
 int /*<<< orphan*/ * FUNC16 (char*) ; 

UINT FUNC17(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PC *pc = (PC *)param;
	UINT ret = ERR_NO_ERROR;
	RPC_CLIENT_GET_ACCOUNT t;
	// Parameter list that can be specified
	PARAM args[] =
	{
		{"[name]", &CmdPrompt, *FUNC16("CMD_AccountCreate_Prompt_Name"), &CmdEvalNotEmpty, NULL},
	};

	// Get the parameter list
	o = FUNC11(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	// RPC call
	FUNC15(&t, sizeof(t));
	FUNC13(t.AccountName, sizeof(t.AccountName), FUNC9(o, "[name]"));

	ret = FUNC0(pc->RemoteClient, &t);

	if (ret == ERR_NO_ERROR)
	{
		// Show the contents of the connection settings
		wchar_t tmp[MAX_SIZE];

		CT *ct = FUNC5();

		// Connection settings name
		FUNC4(ct, FUNC16("CMD_ACCOUNT_COLUMN_NAME"), t.ClientOption->AccountName);

		// Host name of the destination VPN Server
		FUNC12(tmp, sizeof(tmp), t.ClientOption->Hostname);
		FUNC4(ct, FUNC16("CMD_ACCOUNT_COLUMN_HOSTNAME"), tmp);

		// The port number to connect to VPN Server
		FUNC14(tmp, t.ClientOption->Port);
		FUNC4(ct, FUNC16("CMD_ACCOUNT_COLUMN_PORT"), tmp);

		// Virtual HUB name of the destination VPN Server
		FUNC12(tmp, sizeof(tmp), t.ClientOption->HubName);
		FUNC4(ct, FUNC16("CMD_ACCOUNT_COLUMN_HUBNAME"), tmp);

		// Type of proxy server to go through
		FUNC4(ct, FUNC16("CMD_ACCOUNT_COLUMN_PROXY_TYPE"), FUNC10(t.ClientOption->ProxyType));

		if (t.ClientOption->ProxyType != PROXY_DIRECT)
		{
			// Host name of the proxy server
			FUNC12(tmp, sizeof(tmp), t.ClientOption->ProxyName);
			FUNC4(ct, FUNC16("CMD_ACCOUNT_COLUMN_PROXY_HOSTNAME"), tmp);

			// Port number of the proxy server
			FUNC14(tmp, t.ClientOption->ProxyPort);
			FUNC4(ct, FUNC16("CMD_ACCOUNT_COLUMN_PROXY_PORT"), tmp);

			// User name of the proxy server
			FUNC12(tmp, sizeof(tmp), t.ClientOption->ProxyUsername);
			FUNC4(ct, FUNC16("CMD_ACCOUNT_COLUMN_PROXY_USERNAME"), tmp);
		}

		// Verify the server certificate
		FUNC4(ct, FUNC16("CMD_ACCOUNT_COLUMN_SERVER_CERT_USE"),
			t.CheckServerCert ? FUNC16("CMD_MSG_ENABLE") : FUNC16("CMD_MSG_DISABLE"));

		// Registered specific certificate
		if (t.ServerCert != NULL)
		{
			FUNC7(tmp, sizeof(tmp), t.ServerCert);
			FUNC4(ct, FUNC16("CMD_ACCOUNT_COLUMN_SERVER_CERT_NAME"), tmp);
		}

		if (t.CheckServerCert)
		{
			FUNC4(ct, FUNC16("CMD_ACCOUNT_COLUMN_RETRY_ON_SERVER_CERT"),
				t.RetryOnServerCert ? FUNC16("CMD_MSG_ENABLE") : FUNC16("CMD_MSG_DISABLE"));
		}

		// Device name to be used for the connection
		FUNC12(tmp, sizeof(tmp), t.ClientOption->DeviceName);
		FUNC4(ct, FUNC16("CMD_ACCOUNT_COLUMN_DEVICE_NAME"), tmp);

		// Authentication type
		FUNC4(ct, FUNC16("CMD_ACCOUNT_COLUMN_AUTH_TYPE"), FUNC8(t.ClientAuth->AuthType));

		// User name
		FUNC12(tmp, sizeof(tmp), t.ClientAuth->Username);
		FUNC4(ct, FUNC16("CMD_ACCOUNT_COLUMN_AUTH_USERNAME"), tmp);

		if (t.ClientAuth->AuthType == CLIENT_AUTHTYPE_CERT)
		{
			if (t.ClientAuth->ClientX != NULL)
			{
				// Client certificate name
				FUNC7(tmp, sizeof(tmp), t.ClientAuth->ClientX);
				FUNC4(ct, FUNC16("CMD_ACCOUNT_COLUMN_AUTH_CERT_NAME"), tmp);
			}
		}

		// Number of TCP connections to be used for VPN communication
		FUNC14(tmp, t.ClientOption->MaxConnection);
		FUNC4(ct, FUNC16("CMD_ACCOUNT_COLUMN_NUMTCP"), tmp);

		// Establishment interval of each TCP connection
		FUNC14(tmp, t.ClientOption->AdditionalConnectionInterval);
		FUNC4(ct, FUNC16("CMD_ACCOUNT_COLUMN_TCP_INTERVAL"), tmp);

		// Life span of each TCP connection
		if (t.ClientOption->ConnectionDisconnectSpan != 0)
		{
			FUNC14(tmp, t.ClientOption->ConnectionDisconnectSpan);
		}
		else
		{
			FUNC13(tmp, sizeof(tmp), FUNC16("CMD_MSG_INFINITE"));
		}
		FUNC4(ct, FUNC16("CMD_ACCOUNT_COLUMN_TCP_TTL"), tmp);

		// Use of half-duplex mode
		FUNC4(ct, FUNC16("CMD_ACCOUNT_COLUMN_TCP_HALF"),
			t.ClientOption->HalfConnection ? FUNC16("CMD_MSG_ENABLE") : FUNC16("CMD_MSG_DISABLE"));

		// Encryption by SSL
		FUNC4(ct, FUNC16("CMD_ACCOUNT_COLUMN_ENCRYPT"),
			t.ClientOption->UseEncrypt ? FUNC16("CMD_MSG_ENABLE") : FUNC16("CMD_MSG_DISABLE"));

		// Data compression
		FUNC4(ct, FUNC16("CMD_ACCOUNT_COLUMN_COMPRESS"),
			t.ClientOption->UseCompress ? FUNC16("CMD_MSG_ENABLE") : FUNC16("CMD_MSG_DISABLE"));

		// Connect in bridge / router mode
		FUNC4(ct, FUNC16("CMD_ACCOUNT_COLUMN_BRIDGE_ROUTER"),
			t.ClientOption->RequireBridgeRoutingMode ? FUNC16("CMD_MSG_ENABLE") : FUNC16("CMD_MSG_DISABLE"));

		// Connect in monitoring mode
		FUNC4(ct, FUNC16("CMD_ACCOUNT_COLUMN_MONITOR"),
			t.ClientOption->RequireMonitorMode ? FUNC16("CMD_MSG_ENABLE") : FUNC16("CMD_MSG_DISABLE"));

		// Not to rewrite the routing table
		FUNC4(ct, FUNC16("CMD_ACCOUNT_COLUMN_NO_TRACKING"),
			t.ClientOption->NoRoutingTracking ? FUNC16("CMD_MSG_ENABLE") : FUNC16("CMD_MSG_DISABLE"));

		// Disable the QoS control
		FUNC4(ct, FUNC16("CMD_ACCOUNT_COLUMN_QOS_DISABLE"),
			t.ClientOption->DisableQoS ? FUNC16("CMD_MSG_ENABLE") : FUNC16("CMD_MSG_DISABLE"));
			
		// Disable UDP Acceleration
		FUNC4(ct, FUNC16("CMD_ACCOUNT_COLUMN_DISABLEUDP"),
			t.ClientOption->NoUdpAcceleration ? FUNC16("CMD_MSG_ENABLE") : FUNC16("CMD_MSG_DISABLE"));	

		FUNC3(ct, c);
	}

	if (ret != ERR_NO_ERROR)
	{
		// Error has occurred
		FUNC2(c, ret);
	}

	FUNC1(&t);

	// Release of the parameter list
	FUNC6(o);

	return ret;
}