#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_8__ ;
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  set ;
typedef  int /*<<< orphan*/  k ;
typedef  int /*<<< orphan*/  config ;
typedef  int /*<<< orphan*/  X ;
typedef  size_t UINT ;
struct TYPE_20__ {void* Tls_Disable1_2; void* Tls_Disable1_1; void* Tls_Disable1_0; } ;
struct TYPE_25__ {char* OpenVPNDefaultClientOption; int OpenVPNPushDummyIPv4AddressOnL2Mode; int Bridge; char UsernameHubSeparator; int DhParamBits; int /*<<< orphan*/  lock; TYPE_1__ SslAcceptSettings; int /*<<< orphan*/  TrafficLock; int /*<<< orphan*/  Traffic; void* DisableIPv6Listener; } ;
struct TYPE_24__ {int Server; char* ServerName; int ServerPort; int UdpMode; int Interval; int /*<<< orphan*/  lock; void* Enable; } ;
struct TYPE_23__ {int AutoSaveConfigSpan; int BackupConfigOnlyWhenModified; int DisableSSTPServer; int DisableOpenVPNServer; int DisableNatTraversal; int EnableVpnOverIcmp; int EnableVpnOverDns; int SaveDebugLog; int UpdatedServerType; int ServerType; int Weight; char* ControllerName; int ControllerPort; int NumPublicPort; int DisableGetHostNameWhenAcceptTcp; int DisableCoreDumpOnUnix; scalar_t__ OpenVpnServerUdp; void* DisableJsonRpcWebApi; void* StrictSyslogDatetimeFormat; void* EnableVpnAzure; int /*<<< orphan*/ * PublicPorts; int /*<<< orphan*/  PublicIp; int /*<<< orphan*/  MemberPassword; TYPE_8__* Cedar; void* ControllerOnly; int /*<<< orphan*/  HashedPassword; void* NoSendSignature; int /*<<< orphan*/  DebugLog; void* NoDebugDump; void* NoHighPriorityProcess; void* NoLinuxArpFilter; void* UseWebTimePage; void* UseWebUI; int /*<<< orphan*/  Logger; int /*<<< orphan*/  Eraser; void* DisableDeadLockCheck; void* DisableDosProtection; TYPE_7__* Keep; int /*<<< orphan*/  ListenIP; void* DontBackupConfig; } ;
struct TYPE_22__ {char* KeepConnectHost; int KeepConnectPort; int KeepConnectProtocol; int KeepConnectInterval; int SaveType; char* Hostname; int Port; int EnableOpenVPN; int EnableSSTP; char* OpenVPNPortList; char* OpenVPNObfuscationMask; void* OpenVPNObfuscation; void* UseKeepConnect; } ;
struct TYPE_21__ {int NumTokens; int /*<<< orphan*/ * Token; } ;
typedef  TYPE_2__ TOKEN_LIST ;
typedef  TYPE_3__ SYSLOG_SETTING ;
typedef  TYPE_4__ SERVER ;
typedef  TYPE_3__ RPC_KEEP ;
typedef  TYPE_3__ OPENVPN_SSTP_CONFIG ;
typedef  TYPE_7__ KEEP ;
typedef  int /*<<< orphan*/  K ;
typedef  int /*<<< orphan*/  FOLDER ;
typedef  TYPE_8__ CEDAR ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 
 char* CLIENT_DEFAULT_KEEPALIVE_HOST ; 
 void* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int FUNC10 (int /*<<< orphan*/ *,char*,char*,int) ; 
 int FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t DEFAULT_GETIP_THREAD_MAX_NUM ; 
 char DEFAULT_USERNAME_HUB_SEPARATOR ; 
 int DH_PARAM_BITS_DEFAULT ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 void* FARM_DEFAULT_WEIGHT ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GSF_DISABLE_SESSION_RECONNECT ; 
 scalar_t__ FUNC19 (TYPE_4__*,char*) ; 
 int FUNC20 (char*) ; 
 scalar_t__ FUNC21 (char) ; 
 int KEEP_INTERVAL_DEFAULT ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int FUNC23 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MAX_PUBLIC_PORT_NUM ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC24 (int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  OPENVPN_UDP_PORT ; 
 int /*<<< orphan*/  FUNC27 (scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC28 (char*,char*) ; 
 int SERVER_FILE_SAVE_INTERVAL_DEFAULT ; 
 int /*<<< orphan*/  SERVER_FILE_SAVE_INTERVAL_MAX ; 
 int /*<<< orphan*/  SERVER_FILE_SAVE_INTERVAL_MIN ; 
 int SERVER_TYPE_FARM_CONTROLLER ; 
 int SERVER_TYPE_FARM_MEMBER ; 
 int SERVER_TYPE_STANDALONE ; 
 int SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC29 (TYPE_8__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_8__*,char*) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int) ; 
 int /*<<< orphan*/  FUNC33 (size_t) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC36 (int) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (int) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC43 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC44 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC45 (char*,int,char*) ; 
 scalar_t__ FUNC46 (char*) ; 
 int /*<<< orphan*/  FUNC47 (char*) ; 
 int /*<<< orphan*/  FUNC48 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC49 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC50 () ; 
 int /*<<< orphan*/  FUNC51 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC52 (TYPE_3__*,int) ; 
 int /*<<< orphan*/ * FUNC53 (int) ; 

void FUNC54(SERVER *s, FOLDER *f)
{
	BUF *b;
	CEDAR *c;
	char tmp[MAX_SIZE];
	X *x = NULL;
	K *k = NULL;
	FOLDER *params_folder;
	UINT i;
	// Validate arguments
	if (s == NULL || f == NULL)
	{
		return;
	}

	// Save interval related
	s->AutoSaveConfigSpan = FUNC6(f, "AutoSaveConfigSpan") * 1000;
	if (s->AutoSaveConfigSpan == 0)
	{
		s->AutoSaveConfigSpan = SERVER_FILE_SAVE_INTERVAL_DEFAULT;
	}
	else
	{
		s->AutoSaveConfigSpan = FUNC23(s->AutoSaveConfigSpan, SERVER_FILE_SAVE_INTERVAL_MIN, SERVER_FILE_SAVE_INTERVAL_MAX);
	}

	i = FUNC6(f, "MaxConcurrentDnsClientThreads");
	if (i != 0)
	{
		FUNC33(i);
	}
	else
	{
		FUNC33(DEFAULT_GETIP_THREAD_MAX_NUM);
	}

	s->DontBackupConfig = FUNC2(f, "DontBackupConfig");
	FUNC8(f, "ListenIP", &s->ListenIP);

	if (FUNC11(f, "BackupConfigOnlyWhenModified"))
	{
		s->BackupConfigOnlyWhenModified = FUNC2(f, "BackupConfigOnlyWhenModified");
	}
	else
	{
		s->BackupConfigOnlyWhenModified = true;
	}

	// Server log switch type
	if (FUNC11(f, "ServerLogSwitchType"))
	{
		UINT st = FUNC6(f, "ServerLogSwitchType");

		FUNC35(s->Logger, st);
	}

	FUNC37(FUNC7(f, "LoggerMaxLogSize"));

	params_folder = FUNC5(f, "GlobalParams");
	FUNC41(params_folder);

	c = s->Cedar;
	FUNC22(c->lock);
	{
		OPENVPN_SSTP_CONFIG config;
		FOLDER *syslog_f;
		{
			RPC_KEEP k;

			// Keep-alive related
			FUNC52(&k, sizeof(k));
			k.UseKeepConnect = FUNC2(f, "UseKeepConnect");
			FUNC10(f, "KeepConnectHost", k.KeepConnectHost, sizeof(k.KeepConnectHost));
			k.KeepConnectPort = FUNC6(f, "KeepConnectPort");
			k.KeepConnectProtocol = FUNC6(f, "KeepConnectProtocol");
			k.KeepConnectInterval = FUNC6(f, "KeepConnectInterval") * 1000;
			if (k.KeepConnectPort == 0)
			{
				k.KeepConnectPort = 80;
			}
			if (FUNC46(k.KeepConnectHost) == 0)
			{
				FUNC45(k.KeepConnectHost, sizeof(k.KeepConnectHost), CLIENT_DEFAULT_KEEPALIVE_HOST);
			}
			if (k.KeepConnectInterval == 0)
			{
				k.KeepConnectInterval = KEEP_INTERVAL_DEFAULT * 1000;
			}
			if (k.KeepConnectInterval < 5000)
			{
				k.KeepConnectInterval = 5000;
			}
			if (k.KeepConnectInterval > 600000)
			{
				k.KeepConnectInterval = 600000;
			}

			FUNC22(s->Keep->lock);
			{
				KEEP *keep = s->Keep;
				keep->Enable = k.UseKeepConnect;
				keep->Server = true;
				FUNC45(keep->ServerName, sizeof(keep->ServerName), k.KeepConnectHost);
				keep->ServerPort = k.KeepConnectPort;
				keep->UdpMode = k.KeepConnectProtocol;
				keep->Interval = k.KeepConnectInterval;
			}
			FUNC51(s->Keep->lock);
		}

		// syslog
		syslog_f = FUNC5(f, "SyslogSettings");
		if (syslog_f != NULL && FUNC19(s, "b_support_syslog"))
		{
			SYSLOG_SETTING set;

			FUNC52(&set, sizeof(set));

			set.SaveType = FUNC6(syslog_f, "SaveType");
			FUNC10(syslog_f, "HostName", set.Hostname, sizeof(set.Hostname));
			set.Port = FUNC6(syslog_f, "Port");

			FUNC44(s, &set);
		}

		// Whether to disable the IPv6 listener
		s->Cedar->DisableIPv6Listener = FUNC2(f, "DisableIPv6Listener");

		// DoS
		s->DisableDosProtection = FUNC2(f, "DisableDosProtection");

		// Num Connections Per IP
		FUNC36(FUNC6(f, "MaxConnectionsPerIP"));

		// MaxUnestablishedConnections
		FUNC38(FUNC6(f, "MaxUnestablishedConnections"));

		// DeadLock
		s->DisableDeadLockCheck = FUNC2(f, "DisableDeadLockCheck");

		// Eraser
		FUNC32(FUNC6(f, "AutoDeleteCheckIntervalSecs"));
		s->Eraser = FUNC25(s->Logger, FUNC7(f, "AutoDeleteCheckDiskFreeSpaceMin"));

		// WebUI
		s->UseWebUI = FUNC2(f, "UseWebUI");


		// WebTimePage
		s->UseWebTimePage = FUNC2(f, "UseWebTimePage");

		// NoLinuxArpFilter
		s->NoLinuxArpFilter = FUNC2(f, "NoLinuxArpFilter");

		// NoHighPriorityProcess
		s->NoHighPriorityProcess = FUNC2(f, "NoHighPriorityProcess");

		// NoDebugDump
		s->NoDebugDump = FUNC2(f, "NoDebugDump");
		if (s->NoDebugDump)
		{
#ifdef	OS_WIN32
			MsSetEnableMinidump(false);
#endif	// OS_WIN32
		}

		// Disable the SSTP server function
		s->DisableSSTPServer = FUNC2(f, "DisableSSTPServer");

		// Disable the OpenVPN server function
		s->DisableOpenVPNServer = FUNC2(f, "DisableOpenVPNServer");

		// OpenVPN Default Option String
		if (FUNC10(f, "OpenVPNDefaultClientOption", tmp, sizeof(tmp)))
		{
			if (FUNC20(tmp) == false)
			{
				FUNC45(c->OpenVPNDefaultClientOption,
					sizeof(c->OpenVPNDefaultClientOption), tmp);
			}
		}

		// OpenVPN Push a dummy IPv4 address on L2 mode
		if (FUNC11(f, "OpenVPNPushDummyIPv4AddressOnL2Mode") == false)
		{
			// Default enable
			c->OpenVPNPushDummyIPv4AddressOnL2Mode = true;
		}
		else
		{
			c->OpenVPNPushDummyIPv4AddressOnL2Mode = FUNC2(f, "OpenVPNPushDummyIPv4AddressOnL2Mode");
		}

		// Disable the NAT-traversal feature
		s->DisableNatTraversal = FUNC2(f, "DisableNatTraversal");

		if (s->Cedar->Bridge == false)
		{
			// Enable the VPN-over-ICMP
			if (FUNC11(f, "EnableVpnOverIcmp"))
			{
				s->EnableVpnOverIcmp = FUNC2(f, "EnableVpnOverIcmp");
			}
			else
			{
				s->EnableVpnOverIcmp = false;
			}

			// Enable the VPN-over-DNS
			if (FUNC11(f, "EnableVpnOverDns"))
			{
				s->EnableVpnOverDns = FUNC2(f, "EnableVpnOverDns");
			}
			else
			{
				s->EnableVpnOverDns = false;
			}
		}

		// Debug log
		s->SaveDebugLog = FUNC2(f, "SaveDebugLog");
		if (s->SaveDebugLog)
		{
			s->DebugLog = FUNC26();
		}

		// Let the client not to send a signature
		s->NoSendSignature = FUNC2(f, "NoSendSignature");

		// Server certificate
		b = FUNC3(f, "ServerCert");
		if (b != NULL)
		{
			x = FUNC1(b, false);
			FUNC15(b);
		}

		// Server private key
		b = FUNC3(f, "ServerKey");
		if (b != NULL)
		{
			k = FUNC0(b, true, false, NULL);
			FUNC15(b);
		}

		if (x == NULL || k == NULL || FUNC12(x, k) == false)
		{
			FUNC18(x);
			FUNC16(k);
			FUNC40(&x, &k);

			FUNC29(c, x, k);

			FUNC18(x);
			FUNC16(k);
		}
		else
		{
			FUNC29(c, x, k);

			FUNC18(x);
			FUNC16(k);
		}

		// Character which separates the username from the hub name
		if (FUNC10(f, "UsernameHubSeparator", tmp, sizeof(tmp)))
		{
			c->UsernameHubSeparator = FUNC21(tmp[0]) ? tmp[0] : DEFAULT_USERNAME_HUB_SEPARATOR;
		}

		// Cipher Name
		if (FUNC10(f, "CipherName", tmp, sizeof(tmp)))
		{
			FUNC47(tmp);
			FUNC30(c, tmp);
		}

		// Traffic information
		FUNC22(c->TrafficLock);
		{
			FUNC42(f, "ServerTraffic", c->Traffic);
		}
		FUNC51(c->TrafficLock);

		// Type of server
		s->UpdatedServerType = s->ServerType = FUNC6(f, "ServerType");

		// Password
		if (FUNC4(f, "HashedPassword", s->HashedPassword, sizeof(s->HashedPassword)) != sizeof(s->HashedPassword))
		{
			FUNC39(s->HashedPassword, "", 0);
		}

		if (s->ServerType != SERVER_TYPE_STANDALONE)
		{
			// Performance ratio of the server
			s->Weight = FUNC6(f, "ClusterMemberWeight");
			if (s->Weight == 0)
			{
				s->Weight = FARM_DEFAULT_WEIGHT;
			}
		}
		else
		{
			s->Weight = FARM_DEFAULT_WEIGHT;
		}

		if (s->ServerType == SERVER_TYPE_FARM_CONTROLLER)
		{
			s->ControllerOnly = FUNC2(f, "ControllerOnly");
		}

		if (s->ServerType != SERVER_TYPE_STANDALONE)
		{
			// SSTP, OpenVPN, and NAT traversal can not be used in a cluster environment
			s->DisableNatTraversal = true;
			s->DisableSSTPServer = true;
			s->DisableOpenVPNServer = true;
		}

		if (s->Cedar->Bridge)
		{
			// SSTP, OpenVPN, and NAT traversal function can not be used in the bridge environment
			s->DisableNatTraversal = true;
			s->DisableSSTPServer = true;
			s->DisableOpenVPNServer = true;
		}

		// Read the OpenVPN Port List
		if (FUNC10(f, "OpenVPN_UdpPortList", tmp, sizeof(tmp)) == false)
		{
			{
				FUNC49(tmp, OPENVPN_UDP_PORT);
			}
		}

		// Apply the configuration of SSTP and OpenVPN
		FUNC52(&config, sizeof(config));
		config.EnableOpenVPN = !s->DisableOpenVPNServer;
		config.EnableSSTP = !s->DisableSSTPServer;
		FUNC45(config.OpenVPNPortList, sizeof(config.OpenVPNPortList), tmp);

		config.OpenVPNObfuscation = FUNC2(f, "OpenVPNObfuscation");

		if (FUNC10(f, "OpenVPNObfuscationMask", tmp, sizeof(tmp)))
		{
			if (FUNC20(tmp) == false)
			{
				FUNC45(config.OpenVPNObfuscationMask, sizeof(config.OpenVPNObfuscationMask), tmp);
			}
		}

		FUNC43(s, &config);

		if (s->ServerType == SERVER_TYPE_FARM_MEMBER)
		{
			char tmp[6 * MAX_PUBLIC_PORT_NUM + 1];
			// Load the settings item in the case of farm members
			FUNC10(f, "ControllerName", s->ControllerName, sizeof(s->ControllerName));
			s->ControllerPort = FUNC6(f, "ControllerPort");
			FUNC4(f, "MemberPassword", s->MemberPassword, SHA1_SIZE);
			s->PublicIp = FUNC9(f, "PublicIp");
			if (FUNC10(f, "PublicPorts", tmp, sizeof(tmp)))
			{
				TOKEN_LIST *t = FUNC28(tmp, ", ");
				UINT i;
				s->NumPublicPort = t->NumTokens;
				s->PublicPorts = FUNC53(s->NumPublicPort * sizeof(UINT));
				for (i = 0;i < s->NumPublicPort;i++)
				{
					s->PublicPorts[i] = FUNC48(t->Token[i]);
				}
				FUNC17(t);
			}
		}

		// Configuration of VPN Azure Client
		s->EnableVpnAzure = FUNC2(f, "EnableVpnAzure");

		// Disable GetHostName when accepting TCP
		s->DisableGetHostNameWhenAcceptTcp = FUNC2(f, "DisableGetHostNameWhenAcceptTcp");

		if (s->DisableGetHostNameWhenAcceptTcp)
		{
			FUNC14();
		}

		// Disable core dump on UNIX
		s->DisableCoreDumpOnUnix = FUNC2(f, "DisableCoreDumpOnUnix");

		// Disable session reconnect
		FUNC34(GSF_DISABLE_SESSION_RECONNECT, FUNC2(f, "DisableSessionReconnect"));

		c->SslAcceptSettings.Tls_Disable1_0 = FUNC2(f, "Tls_Disable1_0");
		c->SslAcceptSettings.Tls_Disable1_1 = FUNC2(f, "Tls_Disable1_1");
		c->SslAcceptSettings.Tls_Disable1_2 = FUNC2(f, "Tls_Disable1_2");

		s->StrictSyslogDatetimeFormat = FUNC2(f, "StrictSyslogDatetimeFormat");

		// Disable JSON-RPC Web API
		s->DisableJsonRpcWebApi = FUNC2(f, "DisableJsonRpcWebApi");

		// Bits of Diffie-Hellman parameters
		c->DhParamBits = FUNC6(f, "DhParamBits");
		if (c->DhParamBits == 0)
		{
			c->DhParamBits = DH_PARAM_BITS_DEFAULT;
		}

		FUNC31(FUNC13(c->DhParamBits));
		if (s->OpenVpnServerUdp)
		{
			FUNC27(s->OpenVpnServerUdp, FUNC13(c->DhParamBits));
		}
	}
	FUNC51(c->lock);

#ifdef	OS_UNIX
	if (s->DisableCoreDumpOnUnix)
	{
		UnixDisableCoreDump();
	}
#endif	// OS_UNIX
}