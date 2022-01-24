#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_8__ ;
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_14__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  str ;
typedef  scalar_t__ UINT ;
struct TYPE_16__ {int /*<<< orphan*/  Tls_Disable1_2; int /*<<< orphan*/  Tls_Disable1_1; int /*<<< orphan*/  Tls_Disable1_0; } ;
struct TYPE_23__ {int Build; int Bridge; char* OpenVPNDefaultClientOption; char* CipherList; int DhParamBits; int /*<<< orphan*/  lock; TYPE_1__ SslAcceptSettings; int /*<<< orphan*/  TrafficLock; int /*<<< orphan*/  Traffic; int /*<<< orphan*/  UsernameHubSeparator; int /*<<< orphan*/  ServerK; int /*<<< orphan*/  ServerX; int /*<<< orphan*/  OpenVPNPushDummyIPv4AddressOnL2Mode; int /*<<< orphan*/  DisableIPv6Listener; } ;
struct TYPE_22__ {char* ServerName; int ServerPort; int UdpMode; int Interval; int /*<<< orphan*/  lock; int /*<<< orphan*/  Enable; } ;
struct TYPE_21__ {char* OpenVPNPortList; char* OpenVPNObfuscationMask; int /*<<< orphan*/  OpenVPNObfuscation; } ;
struct TYPE_20__ {int AutoSaveConfigSpanSaved; int ServerType; int UpdatedServerType; char* ControllerName; int ControllerPort; scalar_t__ NumPublicPort; int Weight; int /*<<< orphan*/  DisableJsonRpcWebApi; int /*<<< orphan*/  StrictSyslogDatetimeFormat; int /*<<< orphan*/  DisableCoreDumpOnUnix; int /*<<< orphan*/  DisableGetHostNameWhenAcceptTcp; int /*<<< orphan*/  EnableVpnAzure; int /*<<< orphan*/ * AzureClient; int /*<<< orphan*/  ControllerOnly; int /*<<< orphan*/ * PublicPorts; int /*<<< orphan*/  PublicIp; int /*<<< orphan*/  MemberPassword; int /*<<< orphan*/  HashedPassword; TYPE_8__* Cedar; int /*<<< orphan*/  NoSendSignature; int /*<<< orphan*/  SaveDebugLog; int /*<<< orphan*/  UseWebTimePage; int /*<<< orphan*/  EnableVpnOverDns; int /*<<< orphan*/  EnableVpnOverIcmp; int /*<<< orphan*/  DisableOpenVPNServer; int /*<<< orphan*/  DisableSSTPServer; int /*<<< orphan*/  DisableNatTraversal; int /*<<< orphan*/  NoDebugDump; int /*<<< orphan*/  NoHighPriorityProcess; int /*<<< orphan*/  NoLinuxArpFilter; int /*<<< orphan*/  UseWebUI; TYPE_3__* Eraser; int /*<<< orphan*/  DisableDeadLockCheck; int /*<<< orphan*/  DisableDosProtection; TYPE_7__* Keep; TYPE_2__* Logger; int /*<<< orphan*/  ListenIP; int /*<<< orphan*/  BackupConfigOnlyWhenModified; int /*<<< orphan*/  DontBackupConfig; } ;
struct TYPE_19__ {int SaveType; char* Hostname; int Port; } ;
struct TYPE_18__ {int /*<<< orphan*/  MinFreeSpace; } ;
struct TYPE_17__ {int SwitchType; } ;
struct TYPE_15__ {scalar_t__ OsType; } ;
typedef  TYPE_4__ SYSLOG_SETTING ;
typedef  TYPE_5__ SERVER ;
typedef  TYPE_6__ OPENVPN_SSTP_CONFIG ;
typedef  TYPE_7__ KEEP ;
typedef  int /*<<< orphan*/  FOLDER ;
typedef  TYPE_8__ CEDAR ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GSF_DISABLE_SESSION_RECONNECT ; 
 int FUNC10 () ; 
 int FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int FUNC15 () ; 
 TYPE_14__* FUNC16 () ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int MAX_PUBLIC_PORT_NUM ; 
 int MAX_SIZE ; 
 scalar_t__ OSTYPE_LINUX ; 
 int SERVER_TYPE_FARM_CONTROLLER ; 
 int SERVER_TYPE_FARM_MEMBER ; 
 int SERVER_TYPE_STANDALONE ; 
 int SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC19 (TYPE_5__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC24 (char*,int,int /*<<< orphan*/ *) ; 
 int FUNC25 (char*) ; 
 int /*<<< orphan*/  FUNC26 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC28 (int /*<<< orphan*/ ,int) ; 

void FUNC29(FOLDER *f, SERVER *s)
{
	BUF *b;
	CEDAR *c;
	FOLDER *params_folder;
	// Validate arguments
	if (f == NULL || s == NULL)
	{
		return;
	}

	FUNC3(f, "MaxConcurrentDnsClientThreads", FUNC11());

	FUNC3(f, "CurrentBuild", s->Cedar->Build);

	FUNC3(f, "AutoSaveConfigSpan", s->AutoSaveConfigSpanSaved / 1000);

	FUNC0(f, "DontBackupConfig", s->DontBackupConfig);
	FUNC0(f, "BackupConfigOnlyWhenModified", s->BackupConfigOnlyWhenModified);

	FUNC5(f, "ListenIP", &s->ListenIP);

	if (s->Logger != NULL)
	{
		FUNC3(f, "ServerLogSwitchType", s->Logger->SwitchType);
	}

	FUNC4(f, "LoggerMaxLogSize", FUNC14());

	params_folder = FUNC8(f, "GlobalParams");

	if (params_folder != NULL)
	{
		FUNC21(params_folder);
	}

	c = s->Cedar;

	FUNC18(c->lock);
	{
		FOLDER *syslog_f;
		FUNC18(s->Keep->lock);
		{
			KEEP *k = s->Keep;
			FUNC0(f, "UseKeepConnect", k->Enable);
			FUNC7(f, "KeepConnectHost", k->ServerName);
			FUNC3(f, "KeepConnectPort", k->ServerPort);
			FUNC3(f, "KeepConnectProtocol", k->UdpMode);
			FUNC3(f, "KeepConnectInterval", k->Interval / 1000);
		}
		FUNC27(s->Keep->lock);

		// syslog
		syslog_f = FUNC8(f, "SyslogSettings");
		if (syslog_f != NULL)
		{
			SYSLOG_SETTING set;

			FUNC20(s, &set);

			FUNC3(syslog_f, "SaveType", set.SaveType);
			FUNC7(syslog_f, "HostName", set.Hostname);
			FUNC3(syslog_f, "Port", set.Port);
		}

		// IPv6 listener disable setting
		FUNC0(f, "DisableIPv6Listener", s->Cedar->DisableIPv6Listener);

		// DoS
		FUNC0(f, "DisableDosProtection", s->DisableDosProtection);

		// MaxConnectionsPerIP
		FUNC3(f, "MaxConnectionsPerIP", FUNC13());

		// MaxUnestablishedConnections
		FUNC3(f, "MaxUnestablishedConnections", FUNC15());

		// DeadLock
		FUNC0(f, "DisableDeadLockCheck", s->DisableDeadLockCheck);

		// Eraser related
		FUNC4(f, "AutoDeleteCheckDiskFreeSpaceMin", s->Eraser->MinFreeSpace);
		FUNC3(f, "AutoDeleteCheckIntervalSecs", FUNC10());

		// WebUI
		FUNC0(f, "UseWebUI", s->UseWebUI);


		// NoLinuxArpFilter
		if (FUNC16()->OsType == OSTYPE_LINUX)
		{
			FUNC0(f, "NoLinuxArpFilter", s->NoLinuxArpFilter);
		}

		// NoHighPriorityProcess
		FUNC0(f, "NoHighPriorityProcess", s->NoHighPriorityProcess);

#ifdef	OS_WIN32
		CfgAddBool(f, "NoDebugDump", s->NoDebugDump);
#endif	// OS_WIN32

		if (s->ServerType == SERVER_TYPE_STANDALONE)
		{
			if (c->Bridge == false)
			{
				// Disable the NAT-traversal feature
				FUNC0(f, "DisableNatTraversal", s->DisableNatTraversal);

				// Disable the SSTP server function
				FUNC0(f, "DisableSSTPServer", s->DisableSSTPServer);

				// Disable the OpenVPN server function
				FUNC0(f, "DisableOpenVPNServer", s->DisableOpenVPNServer);
			}
		}

		FUNC7(f, "OpenVPNDefaultClientOption", c->OpenVPNDefaultClientOption);

		FUNC0(f, "OpenVPNPushDummyIPv4AddressOnL2Mode", c->OpenVPNPushDummyIPv4AddressOnL2Mode);

		if (c->Bridge == false)
		{
			OPENVPN_SSTP_CONFIG config;

			// VPN over ICMP
			FUNC0(f, "EnableVpnOverIcmp", s->EnableVpnOverIcmp);

			// VPN over DNS
			FUNC0(f, "EnableVpnOverDns", s->EnableVpnOverDns);

			FUNC19(s, &config);

			FUNC7(f, "OpenVPN_UdpPortList", config.OpenVPNPortList);

			FUNC0(f, "OpenVPNObfuscation", config.OpenVPNObfuscation);
			FUNC7(f, "OpenVPNObfuscationMask", config.OpenVPNObfuscationMask);
		}

		// WebTimePage
		FUNC0(f, "UseWebTimePage", s->UseWebTimePage);

		// Debug log
		FUNC0(f, "SaveDebugLog", s->SaveDebugLog);

		// Let the client not to send a signature
		FUNC0(f, "NoSendSignature", s->NoSendSignature);

		// Server certificate
		b = FUNC28(c->ServerX, false);
		FUNC1(f, "ServerCert", b);
		FUNC9(b);

		// Server private key
		b = FUNC17(c->ServerK, false, NULL);
		FUNC1(f, "ServerKey", b);
		FUNC9(b);

		{
			// Character which separates the username from the hub name
			char str[2];
			FUNC24(str, sizeof(str), &c->UsernameHubSeparator);
			FUNC7(f, "UsernameHubSeparator", str);
		}

		// Traffic information
		FUNC18(c->TrafficLock);
		{
			FUNC22(f, "ServerTraffic", c->Traffic);
		}
		FUNC27(c->TrafficLock);

		// Type of server
		if (s->Cedar->Bridge == false)
		{
			FUNC3(f, "ServerType", s->UpdatedServerType);
		}

		// Cipher Name
		FUNC7(f, "CipherName", s->Cedar->CipherList);

		// Password
		FUNC2(f, "HashedPassword", s->HashedPassword, sizeof(s->HashedPassword));

		if (s->UpdatedServerType == SERVER_TYPE_FARM_MEMBER)
		{
			char tmp[6 * MAX_PUBLIC_PORT_NUM + 1];
			UINT i;
			// Setting items in the case of farm members
			FUNC7(f, "ControllerName", s->ControllerName);
			FUNC3(f, "ControllerPort", s->ControllerPort);
			FUNC2(f, "MemberPassword", s->MemberPassword, SHA1_SIZE);
			FUNC6(f, "PublicIp", s->PublicIp);
			tmp[0] = 0;
			for (i = 0;i < s->NumPublicPort;i++)
			{
				char tmp2[MAX_SIZE];
				FUNC26(tmp2, s->PublicPorts[i]);
				FUNC23(tmp, sizeof(tmp), tmp2);
				FUNC23(tmp, sizeof(tmp), ",");
			}
			if (FUNC25(tmp) >= 1)
			{
				if (tmp[FUNC25(tmp) - 1] == ',')
				{
					tmp[FUNC25(tmp) - 1] = 0;
				}
			}
			FUNC7(f, "PublicPorts", tmp);
		}

		if (s->UpdatedServerType != SERVER_TYPE_STANDALONE)
		{
			FUNC3(f, "ClusterMemberWeight", s->Weight);
		}

		if (s->UpdatedServerType == SERVER_TYPE_FARM_CONTROLLER)
		{
			FUNC0(f, "ControllerOnly", s->ControllerOnly);
		}

		// VPN Azure Client
		if (s->AzureClient != NULL)
		{
			FUNC0(f, "EnableVpnAzure", s->EnableVpnAzure);
		}

		FUNC0(f, "DisableGetHostNameWhenAcceptTcp", s->DisableGetHostNameWhenAcceptTcp);
		FUNC0(f, "DisableCoreDumpOnUnix", s->DisableCoreDumpOnUnix);

		FUNC0(f, "Tls_Disable1_0", c->SslAcceptSettings.Tls_Disable1_0);
		FUNC0(f, "Tls_Disable1_1", c->SslAcceptSettings.Tls_Disable1_1);
		FUNC0(f, "Tls_Disable1_2", c->SslAcceptSettings.Tls_Disable1_2);
		FUNC3(f, "DhParamBits", c->DhParamBits);

		// Disable session reconnect
		FUNC0(f, "DisableSessionReconnect", FUNC12(GSF_DISABLE_SESSION_RECONNECT));

		FUNC0(f, "StrictSyslogDatetimeFormat", s->StrictSyslogDatetimeFormat);

		// Disable JSON-RPC Web API
		FUNC0(f, "DisableJsonRpcWebApi", s->DisableJsonRpcWebApi);
	}
	FUNC27(c->lock);
}