#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_43__   TYPE_7__ ;
typedef  struct TYPE_42__   TYPE_6__ ;
typedef  struct TYPE_41__   TYPE_5__ ;
typedef  struct TYPE_40__   TYPE_4__ ;
typedef  struct TYPE_39__   TYPE_2__ ;
typedef  struct TYPE_38__   TYPE_23__ ;
typedef  struct TYPE_37__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  server_str ;
typedef  int /*<<< orphan*/  mschap_v2_server_response_20 ;
typedef  int /*<<< orphan*/  macstr ;
typedef  int /*<<< orphan*/  info ;
typedef  int /*<<< orphan*/  X ;
typedef  int /*<<< orphan*/  UINT64 ;
typedef  scalar_t__ UINT ;
struct TYPE_37__ {char* ClientProductName; char* ServerProductName; char* ClientOsName; char* ClientOsVer; char* ClientOsProductId; char* ClientHostname; char* HubName; int /*<<< orphan*/  ServerIpAddress6; int /*<<< orphan*/  ClientIpAddress6; int /*<<< orphan*/  UniqueId; void* ServerPort; void* ServerIpAddress; int /*<<< orphan*/  ServerHostname; void* ClientPort; void* ClientIpAddress; void* ServerProductBuild; void* ServerProductVer; void* ClientProductBuild; void* ClientProductVer; } ;
typedef  TYPE_1__ UCHAR ;
struct TYPE_43__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; } ;
struct TYPE_42__ {scalar_t__ Version; scalar_t__ Build; int /*<<< orphan*/  ref; } ;
struct TYPE_41__ {int /*<<< orphan*/  Ref; } ;
struct TYPE_40__ {scalar_t__ Layer; char* ClientHostname; char* HubName; char* UserName; char* Password; int /*<<< orphan*/  IPv4ReceivedQueue; int /*<<< orphan*/  ArpTable; int /*<<< orphan*/  Interrupt; TYPE_2__* Sock; int /*<<< orphan*/  ConnectionName; int /*<<< orphan*/  SessionName; TYPE_1__* MacAddress; int /*<<< orphan*/  MsChapV2_ServerResponse; int /*<<< orphan*/  Policy; int /*<<< orphan*/  random; int /*<<< orphan*/  FlushList; TYPE_6__* Cedar; } ;
struct TYPE_38__ {TYPE_1__* ipv6_addr; } ;
struct TYPE_39__ {scalar_t__ LocalPort; scalar_t__ RemotePort; TYPE_23__ RemoteIP; TYPE_23__ LocalIP; } ;
typedef  TYPE_2__ SOCK ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_1__ NODE_INFO ;
typedef  TYPE_4__ IPC ;
typedef  int /*<<< orphan*/  IP ;
typedef  TYPE_5__ EAP_CLIENT ;
typedef  TYPE_6__ CEDAR ;
typedef  TYPE_7__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ ERR_AUTH_FAILED ; 
 scalar_t__ ERR_DISCONNECTED ; 
 scalar_t__ ERR_INTERNAL_ERROR ; 
 scalar_t__ ERR_NO_ERROR ; 
 scalar_t__ ERR_PROTOCOL_ERROR ; 
 void* FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*,char*,int) ; 
 TYPE_2__* FUNC12 (TYPE_6__*) ; 
 int /*<<< orphan*/ * FUNC13 (TYPE_2__*) ; 
 int FUNC14 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IPCCmpArpTable ; 
 scalar_t__ IPC_LAYER_2 ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,TYPE_23__*) ; 
 void* FUNC16 (TYPE_23__*) ; 
 scalar_t__ FUNC17 (char*) ; 
 scalar_t__ FUNC18 (TYPE_23__*) ; 
 scalar_t__ FUNC19 (TYPE_1__*,int) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC20 (char*,int,TYPE_1__*) ; 
 TYPE_7__* FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,char*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *,char*,char*) ; 
 int FUNC32 (int /*<<< orphan*/ *,char*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *,char*,char*,int) ; 
 int /*<<< orphan*/ * FUNC34 (char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC35 (char*,char*,char*) ; 
 int FUNC36 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC37 (TYPE_2__*) ; 
 int SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC38 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC40 (TYPE_7__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC41 (TYPE_7__*,char*) ; 
 int /*<<< orphan*/  FUNC42 (TYPE_1__*,int) ; 
 TYPE_4__* FUNC43 (int) ; 

IPC *FUNC44(CEDAR *cedar, char *client_name, char *postfix, char *hubname, char *username, char *password,
			UINT *error_code, IP *client_ip, UINT client_port, IP *server_ip, UINT server_port,
			char *client_hostname, char *crypt_name,
			bool bridge_mode, UINT mss, EAP_CLIENT *eap_client, X *client_certificate,
			UINT layer)
{
	IPC *ipc;
	UINT dummy_int = 0;
	SOCK *a;
	SOCK *s;
	PACK *p;
	UINT err = ERR_INTERNAL_ERROR;
	char server_str[MAX_SIZE];
	char macstr[30];
	UINT server_ver, server_build;
	UCHAR unique[SHA1_SIZE];
	NODE_INFO info;
	BUF *b;
	UCHAR mschap_v2_server_response_20[20];
	// Validate arguments
	if (cedar == NULL || username == NULL || password == NULL || client_hostname == NULL)
	{
		return NULL;
	}
	if (FUNC17(client_name))
	{
		client_name = "InProc VPN Connection";
	}
	if (FUNC17(crypt_name))
	{
		crypt_name = "";
	}
	if (error_code == NULL)
	{
		error_code = &dummy_int;
	}

	FUNC42(mschap_v2_server_response_20, sizeof(mschap_v2_server_response_20));

	err = *error_code = ERR_INTERNAL_ERROR;

	a = FUNC12(cedar);
	if (a == NULL)
	{
		return NULL;
	}

	ipc = FUNC43(sizeof(IPC));

	ipc->Cedar = cedar;
	FUNC0(cedar->ref);

	ipc->Layer = layer;
	if (ipc->Layer == 0)
	{
		ipc->Layer = IPC_LAYER_2;
	}

	ipc->FlushList = FUNC25();

	FUNC39(ipc->ClientHostname, sizeof(ipc->ClientHostname), client_hostname);
	FUNC39(ipc->HubName, sizeof(ipc->HubName), hubname);
	FUNC39(ipc->UserName, sizeof(ipc->UserName), username);
	FUNC39(ipc->Password, sizeof(ipc->Password), password);

	// Connect the in-process socket
	s = FUNC2(a, client_ip, client_port, server_ip, server_port);
	if (s == NULL)
	{
		goto LABEL_ERROR;
	}

	// Protocol initialization process
	if (FUNC1(s) == false)
	{
		err = ERR_DISCONNECTED;
		goto LABEL_ERROR;
	}

	p = FUNC13(s);
	if (p == NULL)
	{
		err = ERR_DISCONNECTED;
		goto LABEL_ERROR;
	}

	err = FUNC10(p);
	if (err != ERR_NO_ERROR)
	{
		FUNC9(p);
		goto LABEL_ERROR;
	}

	if (FUNC11(p, ipc->random, &server_ver, &server_build, server_str, sizeof(server_str)) == false)
	{
		FUNC9(p);
		err = ERR_DISCONNECTED;
		goto LABEL_ERROR;
	}

	FUNC9(p);

	// Upload the authentication data
	if (client_certificate != NULL)
	{
		p = FUNC34(hubname, username, client_certificate);
	}
	else
	{
		p = FUNC35(hubname, username, password);
	}

	if (p == NULL)
	{
		err = ERR_AUTH_FAILED;
		goto LABEL_ERROR;
	}

	FUNC31(p, "hello", client_name);
	FUNC29(p, "client_ver", cedar->Version);
	FUNC29(p, "client_build", cedar->Build);
	FUNC29(p, "max_connection", 1);
	FUNC29(p, "use_encrypt", 0);
	FUNC29(p, "use_compress", 0);
	FUNC29(p, "half_connection", 0);
	FUNC29(p, "adjust_mss", mss);
	FUNC27(p, "require_bridge_routing_mode", bridge_mode);
	FUNC27(p, "require_monitor_mode", false);
	FUNC27(p, "qos", false);

	if (eap_client != NULL)
	{
		UINT64 ptr = (UINT64)eap_client;
		FUNC30(p, "release_me_eap_client", ptr);

		FUNC0(eap_client->Ref);
	}

	// Unique ID is determined by the sum of the connecting client IP address and the client_name
	b = FUNC21();
	FUNC40(b, client_ip, sizeof(IP));
	FUNC41(b, client_name);
	FUNC41(b, crypt_name);

	FUNC38(unique, b->Buf, b->Size);

	FUNC7(b);

	FUNC28(p, "unique_id", unique, SHA1_SIZE);

	FUNC31(p, "inproc_postfix", postfix);
	FUNC31(p, "inproc_cryptname", crypt_name);
	FUNC29(p, "inproc_layer", ipc->Layer);

	// Node information
	FUNC42(&info, sizeof(info));
	FUNC39(info.ClientProductName, sizeof(info.ClientProductName), client_name);
	info.ClientProductVer = FUNC6(cedar->Version);
	info.ClientProductBuild = FUNC6(cedar->Build);
	FUNC39(info.ServerProductName, sizeof(info.ServerProductName), server_str);
	info.ServerProductVer = FUNC6(server_ver);
	info.ServerProductBuild = FUNC6(server_build);
	FUNC39(info.ClientOsName, sizeof(info.ClientOsName), client_name);
	FUNC39(info.ClientOsVer, sizeof(info.ClientOsVer), "-");
	FUNC39(info.ClientOsProductId, sizeof(info.ClientOsProductId), "-");
	info.ClientIpAddress = FUNC16(&s->LocalIP);
	info.ClientPort = FUNC6(s->LocalPort);
	FUNC39(info.ClientHostname, sizeof(info.ClientHostname), ipc->ClientHostname);
	FUNC15(info.ServerHostname, sizeof(info.ServerHostname), &s->RemoteIP);
	info.ServerIpAddress = FUNC16(&s->RemoteIP);
	info.ServerPort = FUNC6(s->RemotePort);
	FUNC39(info.HubName, sizeof(info.HubName), hubname);
	FUNC3(info.UniqueId, unique, 16);
	if (FUNC18(&s->LocalIP))
	{
		FUNC3(info.ClientIpAddress6, s->LocalIP.ipv6_addr, 16);
	}
	if (FUNC18(&s->RemoteIP))
	{
		FUNC3(info.ServerIpAddress6, s->RemoteIP.ipv6_addr, 16);
	}
	FUNC26(p, &info);

	if (FUNC14(s, p) == false)
	{
		FUNC9(p);
		err = ERR_DISCONNECTED;
		goto LABEL_ERROR;
	}

	FUNC9(p);

	// Receive a Welcome packet
	p = FUNC13(s);
	if (p == NULL)
	{
		err = ERR_DISCONNECTED;
		goto LABEL_ERROR;
	}

	err = FUNC10(p);
	if (err != ERR_NO_ERROR)
	{
		FUNC9(p);
		goto LABEL_ERROR;
	}

	if (FUNC36(p, ipc->SessionName, sizeof(ipc->SessionName),
		ipc->ConnectionName, sizeof(ipc->ConnectionName), &ipc->Policy) == false)
	{
		err = ERR_PROTOCOL_ERROR;
		FUNC9(p);
		goto LABEL_ERROR;
	}

	if (FUNC32(p, "IpcMacAddress", ipc->MacAddress, 6) == false || FUNC19(ipc->MacAddress, 6))
	{
		err = ERR_PROTOCOL_ERROR;
		FUNC9(p);
		goto LABEL_ERROR;
	}

	if (FUNC32(p, "IpcMsChapV2ServerResponse", mschap_v2_server_response_20, sizeof(mschap_v2_server_response_20)))
	{
		FUNC3(ipc->MsChapV2_ServerResponse, mschap_v2_server_response_20, sizeof(mschap_v2_server_response_20));
	}

	FUNC33(p, "IpcHubName", ipc->HubName, sizeof(ipc->HubName));
	FUNC4("IPC Hub Name: %s\n", ipc->HubName);

	FUNC20(macstr, sizeof(macstr), ipc->MacAddress);

	FUNC4("IPC: Session = %s, Connection = %s, Mac = %s\n", ipc->SessionName, ipc->ConnectionName, macstr);

	FUNC9(p);

	FUNC37(a);
	ipc->Sock = s;

	FUNC4("NewIPC() Succeed.\n");

	ipc->Interrupt = FUNC22();

	// Create an ARP table
	ipc->ArpTable = FUNC23(IPCCmpArpTable);

	// Create an IPv4 reception queue
	ipc->IPv4ReceivedQueue = FUNC24();

	return ipc;

LABEL_ERROR:
	FUNC4("NewIPC() Failed: Err = %u\n", err);
	FUNC5(s);
	FUNC37(s);
	FUNC37(a);
	FUNC8(ipc);
	*error_code = err;
	return NULL;
}