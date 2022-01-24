#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_9__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  char wchar_t ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  args ;
typedef  scalar_t__ UINT ;
struct TYPE_24__ {char* AccountName; scalar_t__ ProxyType; scalar_t__ DisableQoS; scalar_t__ NoRoutingTracking; scalar_t__ RequireMonitorMode; scalar_t__ RequireBridgeRoutingMode; scalar_t__ UseCompress; scalar_t__ UseEncrypt; scalar_t__ HalfConnection; int /*<<< orphan*/  ConnectionDisconnectSpan; int /*<<< orphan*/  AdditionalConnectionInterval; int /*<<< orphan*/  MaxConnection; int /*<<< orphan*/  DeviceName; int /*<<< orphan*/  ProxyUsername; int /*<<< orphan*/  ProxyPort; int /*<<< orphan*/  ProxyName; int /*<<< orphan*/  HubName; int /*<<< orphan*/  Port; int /*<<< orphan*/  Hostname; } ;
struct TYPE_23__ {int /*<<< orphan*/  (* Write ) (TYPE_5__*,char*) ;} ;
struct TYPE_22__ {char* member_0; char* member_2; int /*<<< orphan*/ * member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_1; } ;
struct TYPE_21__ {int /*<<< orphan*/  Rpc; int /*<<< orphan*/ * HubName; } ;
struct TYPE_20__ {int /*<<< orphan*/  Policy; TYPE_9__* ClientOption; TYPE_1__* ClientAuth; int /*<<< orphan*/ * ServerCert; scalar_t__ CheckServerCert; int /*<<< orphan*/  HubName; } ;
struct TYPE_19__ {scalar_t__ AuthType; int /*<<< orphan*/ * ClientX; int /*<<< orphan*/  Username; } ;
typedef  TYPE_2__ RPC_CREATE_LINK ;
typedef  TYPE_3__ PS ;
typedef  TYPE_4__ PARAM ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  CT ;
typedef  TYPE_5__ CONSOLE ;
typedef  int /*<<< orphan*/  CLIENT_OPTION ;

/* Variables and functions */
 scalar_t__ CLIENT_AUTHTYPE_CERT ; 
 int /*<<< orphan*/  CmdEvalNotEmpty ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,scalar_t__) ; 
 int /*<<< orphan*/  CmdPrompt ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int /*<<< orphan*/ *) ; 
 char* FUNC7 (scalar_t__) ; 
 char* FUNC8 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC9 (scalar_t__) ; 
 int MAX_SIZE ; 
 scalar_t__ PROXY_DIRECT ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_5__*,char*,char*,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,int) ; 
 TYPE_9__* FUNC18 (int) ; 
 char* FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_5__*,char*) ; 

UINT FUNC23(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	RPC_CREATE_LINK t;
	// Parameter list that can be specified
	PARAM args[] =
	{
		// "name", prompt_proc, prompt_param, eval_proc, eval_param
		{"[name]", CmdPrompt, FUNC19("CMD_CascadeCreate_Prompt_Name"), CmdEvalNotEmpty, NULL},
	};
	
	// If virtual HUB is not selected, it's an error
	if (ps->HubName == NULL)
	{
		c->Write(c, FUNC19("CMD_Hub_Not_Selected"));
		return ERR_INVALID_PARAMETER;
	}

	o = FUNC10(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	FUNC17(&t, sizeof(t));
	FUNC13(t.HubName, sizeof(t.HubName), ps->HubName);
	t.ClientOption = FUNC18(sizeof(CLIENT_OPTION));
	FUNC15(t.ClientOption->AccountName, sizeof(t.ClientOption->AccountName),
		FUNC8(o, "[name]"));

	// RPC call
	ret = FUNC12(ps->Rpc, &t);

	if (ret != ERR_NO_ERROR)
	{
		// An error has occured
		FUNC0(c, ret);
		FUNC4(o);
		return ret;
	}
	else
	{
		// Show the contents of the connection settings
		wchar_t tmp[MAX_SIZE];

		CT *ct = FUNC3();

		// Connection settings name
		FUNC2(ct, FUNC19("CMD_ACCOUNT_COLUMN_NAME"), t.ClientOption->AccountName);

		// Host name of the destination VPN Server
		FUNC14(tmp, sizeof(tmp), t.ClientOption->Hostname);
		FUNC2(ct, FUNC19("CMD_ACCOUNT_COLUMN_HOSTNAME"), tmp);

		// The port number to connect to VPN Server
		FUNC16(tmp, t.ClientOption->Port);
		FUNC2(ct, FUNC19("CMD_ACCOUNT_COLUMN_PORT"), tmp);

		// Virtual HUB name of the destination VPN Server
		FUNC14(tmp, sizeof(tmp), t.ClientOption->HubName);
		FUNC2(ct, FUNC19("CMD_ACCOUNT_COLUMN_HUBNAME"), tmp);

		// Type of proxy server to go through
		FUNC2(ct, FUNC19("CMD_ACCOUNT_COLUMN_PROXY_TYPE"), FUNC9(t.ClientOption->ProxyType));

		if (t.ClientOption->ProxyType != PROXY_DIRECT)
		{
			// Host name of the proxy server
			FUNC14(tmp, sizeof(tmp), t.ClientOption->ProxyName);
			FUNC2(ct, FUNC19("CMD_ACCOUNT_COLUMN_PROXY_HOSTNAME"), tmp);

			// Port number of the proxy server
			FUNC16(tmp, t.ClientOption->ProxyPort);
			FUNC2(ct, FUNC19("CMD_ACCOUNT_COLUMN_PROXY_PORT"), tmp);

			// User name of the proxy server
			FUNC14(tmp, sizeof(tmp), t.ClientOption->ProxyUsername);
			FUNC2(ct, FUNC19("CMD_ACCOUNT_COLUMN_PROXY_USERNAME"), tmp);
		}

		// To verify the server certificate
		FUNC2(ct, FUNC19("CMD_ACCOUNT_COLUMN_SERVER_CERT_USE"),
			t.CheckServerCert ? FUNC19("CMD_MSG_ENABLE") : FUNC19("CMD_MSG_DISABLE"));

		// Registered specific certificate
		if (t.ServerCert != NULL)
		{
			FUNC6(tmp, sizeof(tmp), t.ServerCert);
			FUNC2(ct, FUNC19("CMD_ACCOUNT_COLUMN_SERVER_CERT_NAME"), tmp);
		}

		// Device name to be used for the connection
		FUNC14(tmp, sizeof(tmp), t.ClientOption->DeviceName);
		FUNC2(ct, FUNC19("CMD_ACCOUNT_COLUMN_DEVICE_NAME"), tmp);

		// Authentication type
		FUNC2(ct, FUNC19("CMD_ACCOUNT_COLUMN_AUTH_TYPE"), FUNC7(t.ClientAuth->AuthType));

		// User name
		FUNC14(tmp, sizeof(tmp), t.ClientAuth->Username);
		FUNC2(ct, FUNC19("CMD_ACCOUNT_COLUMN_AUTH_USERNAME"), tmp);

		if (t.ClientAuth->AuthType == CLIENT_AUTHTYPE_CERT)
		{
			if (t.ClientAuth->ClientX != NULL)
			{
				// Client certificate name
				FUNC6(tmp, sizeof(tmp), t.ClientAuth->ClientX);
				FUNC2(ct, FUNC19("CMD_ACCOUNT_COLUMN_AUTH_CERT_NAME"), tmp);
			}
		}

		// Number of TCP connections to be used for VPN communication
		FUNC16(tmp, t.ClientOption->MaxConnection);
		FUNC2(ct, FUNC19("CMD_ACCOUNT_COLUMN_NUMTCP"), tmp);

		// Establishment interval of each TCP connection
		FUNC16(tmp, t.ClientOption->AdditionalConnectionInterval);
		FUNC2(ct, FUNC19("CMD_ACCOUNT_COLUMN_TCP_INTERVAL"), tmp);

		// Life span of each TCP connection
		if (t.ClientOption->ConnectionDisconnectSpan != 0)
		{
			FUNC16(tmp, t.ClientOption->ConnectionDisconnectSpan);
		}
		else
		{
			FUNC15(tmp, sizeof(tmp), FUNC19("CMD_MSG_INFINITE"));
		}
		FUNC2(ct, FUNC19("CMD_ACCOUNT_COLUMN_TCP_TTL"), tmp);

		// Use of half-duplex mode
		FUNC2(ct, FUNC19("CMD_ACCOUNT_COLUMN_TCP_HALF"),
			t.ClientOption->HalfConnection ? FUNC19("CMD_MSG_ENABLE") : FUNC19("CMD_MSG_DISABLE"));

		// Encryption by SSL
		FUNC2(ct, FUNC19("CMD_ACCOUNT_COLUMN_ENCRYPT"),
			t.ClientOption->UseEncrypt ? FUNC19("CMD_MSG_ENABLE") : FUNC19("CMD_MSG_DISABLE"));

		// Data compression
		FUNC2(ct, FUNC19("CMD_ACCOUNT_COLUMN_COMPRESS"),
			t.ClientOption->UseCompress ? FUNC19("CMD_MSG_ENABLE") : FUNC19("CMD_MSG_DISABLE"));

		// Connect in bridge / router mode
		FUNC2(ct, FUNC19("CMD_ACCOUNT_COLUMN_BRIDGE_ROUTER"),
			t.ClientOption->RequireBridgeRoutingMode ? FUNC19("CMD_MSG_ENABLE") : FUNC19("CMD_MSG_DISABLE"));

		// Connect in monitoring mode
		FUNC2(ct, FUNC19("CMD_ACCOUNT_COLUMN_MONITOR"),
			t.ClientOption->RequireMonitorMode ? FUNC19("CMD_MSG_ENABLE") : FUNC19("CMD_MSG_DISABLE"));

		// Not to rewrite the routing table
		FUNC2(ct, FUNC19("CMD_ACCOUNT_COLUMN_NO_TRACKING"),
			t.ClientOption->NoRoutingTracking ? FUNC19("CMD_MSG_ENABLE") : FUNC19("CMD_MSG_DISABLE"));

		// Disable the QoS control
		FUNC2(ct, FUNC19("CMD_ACCOUNT_COLUMN_QOS_DISABLE"),
			t.ClientOption->DisableQoS ? FUNC19("CMD_MSG_ENABLE") : FUNC19("CMD_MSG_DISABLE"));

		FUNC1(ct, c);

		// Security policy
		c->Write(c, L"");
		c->Write(c, FUNC19("CMD_CascadeGet_Policy"));
		FUNC11(c, &t.Policy, true);
	}

	FUNC5(&t);

	FUNC4(o);

	return 0;
}