
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int tmp ;
typedef int set ;
typedef int k ;
typedef int config ;
typedef int X ;
typedef size_t UINT ;
struct TYPE_20__ {void* Tls_Disable1_2; void* Tls_Disable1_1; void* Tls_Disable1_0; } ;
struct TYPE_25__ {char* OpenVPNDefaultClientOption; int OpenVPNPushDummyIPv4AddressOnL2Mode; int Bridge; char UsernameHubSeparator; int DhParamBits; int lock; TYPE_1__ SslAcceptSettings; int TrafficLock; int Traffic; void* DisableIPv6Listener; } ;
struct TYPE_24__ {int Server; char* ServerName; int ServerPort; int UdpMode; int Interval; int lock; void* Enable; } ;
struct TYPE_23__ {int AutoSaveConfigSpan; int BackupConfigOnlyWhenModified; int DisableSSTPServer; int DisableOpenVPNServer; int DisableNatTraversal; int EnableVpnOverIcmp; int EnableVpnOverDns; int SaveDebugLog; int UpdatedServerType; int ServerType; int Weight; char* ControllerName; int ControllerPort; int NumPublicPort; int DisableGetHostNameWhenAcceptTcp; int DisableCoreDumpOnUnix; scalar_t__ OpenVpnServerUdp; void* DisableJsonRpcWebApi; void* StrictSyslogDatetimeFormat; void* EnableVpnAzure; int * PublicPorts; int PublicIp; int MemberPassword; TYPE_8__* Cedar; void* ControllerOnly; int HashedPassword; void* NoSendSignature; int DebugLog; void* NoDebugDump; void* NoHighPriorityProcess; void* NoLinuxArpFilter; void* UseWebTimePage; void* UseWebUI; int Logger; int Eraser; void* DisableDeadLockCheck; void* DisableDosProtection; TYPE_7__* Keep; int ListenIP; void* DontBackupConfig; } ;
struct TYPE_22__ {char* KeepConnectHost; int KeepConnectPort; int KeepConnectProtocol; int KeepConnectInterval; int SaveType; char* Hostname; int Port; int EnableOpenVPN; int EnableSSTP; char* OpenVPNPortList; char* OpenVPNObfuscationMask; void* OpenVPNObfuscation; void* UseKeepConnect; } ;
struct TYPE_21__ {int NumTokens; int * Token; } ;
typedef TYPE_2__ TOKEN_LIST ;
typedef TYPE_3__ SYSLOG_SETTING ;
typedef TYPE_4__ SERVER ;
typedef TYPE_3__ RPC_KEEP ;
typedef TYPE_3__ OPENVPN_SSTP_CONFIG ;
typedef TYPE_7__ KEEP ;
typedef int K ;
typedef int FOLDER ;
typedef TYPE_8__ CEDAR ;
typedef int BUF ;


 int * BufToK (int *,int,int,int *) ;
 int * BufToX (int *,int) ;
 char* CLIENT_DEFAULT_KEEPALIVE_HOST ;
 void* CfgGetBool (int *,char*) ;
 int * CfgGetBuf (int *,char*) ;
 int CfgGetByte (int *,char*,int ,int) ;
 int * CfgGetFolder (int *,char*) ;
 int CfgGetInt (int *,char*) ;
 int CfgGetInt64 (int *,char*) ;
 int CfgGetIp (int *,char*,int *) ;
 int CfgGetIp32 (int *,char*) ;
 int CfgGetStr (int *,char*,char*,int) ;
 int CfgIsItem (int *,char*) ;
 int CheckXandK (int *,int *) ;
 size_t DEFAULT_GETIP_THREAD_MAX_NUM ;
 char DEFAULT_USERNAME_HUB_SEPARATOR ;
 int DH_PARAM_BITS_DEFAULT ;
 int DhNewFromBits (int) ;
 int DisableGetHostNameWhenAcceptInit () ;
 void* FARM_DEFAULT_WEIGHT ;
 int FreeBuf (int *) ;
 int FreeK (int *) ;
 int FreeToken (TYPE_2__*) ;
 int FreeX (int *) ;
 int GSF_DISABLE_SESSION_RECONNECT ;
 scalar_t__ GetServerCapsBool (TYPE_4__*,char*) ;
 int IsEmptyStr (char*) ;
 scalar_t__ IsPrintableAsciiChar (char) ;
 int KEEP_INTERVAL_DEFAULT ;
 int Lock (int ) ;
 int MAKESURE (int,int ,int ) ;
 int MAX_PUBLIC_PORT_NUM ;
 int MAX_SIZE ;
 int MsSetEnableMinidump (int) ;
 int NewEraser (int ,int ) ;
 int NewTinyLog () ;
 int OPENVPN_UDP_PORT ;
 int OpenVpnServerUdpSetDhParam (scalar_t__,int ) ;
 TYPE_2__* ParseToken (char*,char*) ;
 int SERVER_FILE_SAVE_INTERVAL_DEFAULT ;
 int SERVER_FILE_SAVE_INTERVAL_MAX ;
 int SERVER_FILE_SAVE_INTERVAL_MIN ;
 int SERVER_TYPE_FARM_CONTROLLER ;
 int SERVER_TYPE_FARM_MEMBER ;
 int SERVER_TYPE_STANDALONE ;
 int SHA1_SIZE ;
 int SetCedarCert (TYPE_8__*,int *,int *) ;
 int SetCedarCipherList (TYPE_8__*,char*) ;
 int SetDhParam (int ) ;
 int SetEraserCheckInterval (int) ;
 int SetGetIpThreadMaxNum (size_t) ;
 int SetGlobalServerFlag (int ,void*) ;
 int SetLogSwitchType (int ,size_t) ;
 int SetMaxConnectionsPerIp (int) ;
 int SetMaxLogSize (int ) ;
 int SetMaxUnestablishedConnections (int) ;
 int Sha0 (int ,char*,int ) ;
 int SiGenerateDefaultCert (int **,int **) ;
 int SiLoadGlobalParamsCfg (int *) ;
 int SiLoadTraffic (int *,char*,int ) ;
 int SiSetOpenVPNAndSSTPConfig (TYPE_4__*,TYPE_3__*) ;
 int SiSetSysLogSetting (TYPE_4__*,TYPE_3__*) ;
 int StrCpy (char*,int,char*) ;
 scalar_t__ StrLen (char*) ;
 int StrUpper (char*) ;
 int ToInt (int ) ;
 int ToStr (char*,int ) ;
 int UnixDisableCoreDump () ;
 int Unlock (int ) ;
 int Zero (TYPE_3__*,int) ;
 int * ZeroMalloc (int) ;

void SiLoadServerCfg(SERVER *s, FOLDER *f)
{
 BUF *b;
 CEDAR *c;
 char tmp[MAX_SIZE];
 X *x = ((void*)0);
 K *k = ((void*)0);
 FOLDER *params_folder;
 UINT i;

 if (s == ((void*)0) || f == ((void*)0))
 {
  return;
 }


 s->AutoSaveConfigSpan = CfgGetInt(f, "AutoSaveConfigSpan") * 1000;
 if (s->AutoSaveConfigSpan == 0)
 {
  s->AutoSaveConfigSpan = SERVER_FILE_SAVE_INTERVAL_DEFAULT;
 }
 else
 {
  s->AutoSaveConfigSpan = MAKESURE(s->AutoSaveConfigSpan, SERVER_FILE_SAVE_INTERVAL_MIN, SERVER_FILE_SAVE_INTERVAL_MAX);
 }

 i = CfgGetInt(f, "MaxConcurrentDnsClientThreads");
 if (i != 0)
 {
  SetGetIpThreadMaxNum(i);
 }
 else
 {
  SetGetIpThreadMaxNum(DEFAULT_GETIP_THREAD_MAX_NUM);
 }

 s->DontBackupConfig = CfgGetBool(f, "DontBackupConfig");
 CfgGetIp(f, "ListenIP", &s->ListenIP);

 if (CfgIsItem(f, "BackupConfigOnlyWhenModified"))
 {
  s->BackupConfigOnlyWhenModified = CfgGetBool(f, "BackupConfigOnlyWhenModified");
 }
 else
 {
  s->BackupConfigOnlyWhenModified = 1;
 }


 if (CfgIsItem(f, "ServerLogSwitchType"))
 {
  UINT st = CfgGetInt(f, "ServerLogSwitchType");

  SetLogSwitchType(s->Logger, st);
 }

 SetMaxLogSize(CfgGetInt64(f, "LoggerMaxLogSize"));

 params_folder = CfgGetFolder(f, "GlobalParams");
 SiLoadGlobalParamsCfg(params_folder);

 c = s->Cedar;
 Lock(c->lock);
 {
  OPENVPN_SSTP_CONFIG config;
  FOLDER *syslog_f;
  {
   RPC_KEEP k;


   Zero(&k, sizeof(k));
   k.UseKeepConnect = CfgGetBool(f, "UseKeepConnect");
   CfgGetStr(f, "KeepConnectHost", k.KeepConnectHost, sizeof(k.KeepConnectHost));
   k.KeepConnectPort = CfgGetInt(f, "KeepConnectPort");
   k.KeepConnectProtocol = CfgGetInt(f, "KeepConnectProtocol");
   k.KeepConnectInterval = CfgGetInt(f, "KeepConnectInterval") * 1000;
   if (k.KeepConnectPort == 0)
   {
    k.KeepConnectPort = 80;
   }
   if (StrLen(k.KeepConnectHost) == 0)
   {
    StrCpy(k.KeepConnectHost, sizeof(k.KeepConnectHost), CLIENT_DEFAULT_KEEPALIVE_HOST);
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

   Lock(s->Keep->lock);
   {
    KEEP *keep = s->Keep;
    keep->Enable = k.UseKeepConnect;
    keep->Server = 1;
    StrCpy(keep->ServerName, sizeof(keep->ServerName), k.KeepConnectHost);
    keep->ServerPort = k.KeepConnectPort;
    keep->UdpMode = k.KeepConnectProtocol;
    keep->Interval = k.KeepConnectInterval;
   }
   Unlock(s->Keep->lock);
  }


  syslog_f = CfgGetFolder(f, "SyslogSettings");
  if (syslog_f != ((void*)0) && GetServerCapsBool(s, "b_support_syslog"))
  {
   SYSLOG_SETTING set;

   Zero(&set, sizeof(set));

   set.SaveType = CfgGetInt(syslog_f, "SaveType");
   CfgGetStr(syslog_f, "HostName", set.Hostname, sizeof(set.Hostname));
   set.Port = CfgGetInt(syslog_f, "Port");

   SiSetSysLogSetting(s, &set);
  }


  s->Cedar->DisableIPv6Listener = CfgGetBool(f, "DisableIPv6Listener");


  s->DisableDosProtection = CfgGetBool(f, "DisableDosProtection");


  SetMaxConnectionsPerIp(CfgGetInt(f, "MaxConnectionsPerIP"));


  SetMaxUnestablishedConnections(CfgGetInt(f, "MaxUnestablishedConnections"));


  s->DisableDeadLockCheck = CfgGetBool(f, "DisableDeadLockCheck");


  SetEraserCheckInterval(CfgGetInt(f, "AutoDeleteCheckIntervalSecs"));
  s->Eraser = NewEraser(s->Logger, CfgGetInt64(f, "AutoDeleteCheckDiskFreeSpaceMin"));


  s->UseWebUI = CfgGetBool(f, "UseWebUI");



  s->UseWebTimePage = CfgGetBool(f, "UseWebTimePage");


  s->NoLinuxArpFilter = CfgGetBool(f, "NoLinuxArpFilter");


  s->NoHighPriorityProcess = CfgGetBool(f, "NoHighPriorityProcess");


  s->NoDebugDump = CfgGetBool(f, "NoDebugDump");
  if (s->NoDebugDump)
  {



  }


  s->DisableSSTPServer = CfgGetBool(f, "DisableSSTPServer");


  s->DisableOpenVPNServer = CfgGetBool(f, "DisableOpenVPNServer");


  if (CfgGetStr(f, "OpenVPNDefaultClientOption", tmp, sizeof(tmp)))
  {
   if (IsEmptyStr(tmp) == 0)
   {
    StrCpy(c->OpenVPNDefaultClientOption,
     sizeof(c->OpenVPNDefaultClientOption), tmp);
   }
  }


  if (CfgIsItem(f, "OpenVPNPushDummyIPv4AddressOnL2Mode") == 0)
  {

   c->OpenVPNPushDummyIPv4AddressOnL2Mode = 1;
  }
  else
  {
   c->OpenVPNPushDummyIPv4AddressOnL2Mode = CfgGetBool(f, "OpenVPNPushDummyIPv4AddressOnL2Mode");
  }


  s->DisableNatTraversal = CfgGetBool(f, "DisableNatTraversal");

  if (s->Cedar->Bridge == 0)
  {

   if (CfgIsItem(f, "EnableVpnOverIcmp"))
   {
    s->EnableVpnOverIcmp = CfgGetBool(f, "EnableVpnOverIcmp");
   }
   else
   {
    s->EnableVpnOverIcmp = 0;
   }


   if (CfgIsItem(f, "EnableVpnOverDns"))
   {
    s->EnableVpnOverDns = CfgGetBool(f, "EnableVpnOverDns");
   }
   else
   {
    s->EnableVpnOverDns = 0;
   }
  }


  s->SaveDebugLog = CfgGetBool(f, "SaveDebugLog");
  if (s->SaveDebugLog)
  {
   s->DebugLog = NewTinyLog();
  }


  s->NoSendSignature = CfgGetBool(f, "NoSendSignature");


  b = CfgGetBuf(f, "ServerCert");
  if (b != ((void*)0))
  {
   x = BufToX(b, 0);
   FreeBuf(b);
  }


  b = CfgGetBuf(f, "ServerKey");
  if (b != ((void*)0))
  {
   k = BufToK(b, 1, 0, ((void*)0));
   FreeBuf(b);
  }

  if (x == ((void*)0) || k == ((void*)0) || CheckXandK(x, k) == 0)
  {
   FreeX(x);
   FreeK(k);
   SiGenerateDefaultCert(&x, &k);

   SetCedarCert(c, x, k);

   FreeX(x);
   FreeK(k);
  }
  else
  {
   SetCedarCert(c, x, k);

   FreeX(x);
   FreeK(k);
  }


  if (CfgGetStr(f, "UsernameHubSeparator", tmp, sizeof(tmp)))
  {
   c->UsernameHubSeparator = IsPrintableAsciiChar(tmp[0]) ? tmp[0] : DEFAULT_USERNAME_HUB_SEPARATOR;
  }


  if (CfgGetStr(f, "CipherName", tmp, sizeof(tmp)))
  {
   StrUpper(tmp);
   SetCedarCipherList(c, tmp);
  }


  Lock(c->TrafficLock);
  {
   SiLoadTraffic(f, "ServerTraffic", c->Traffic);
  }
  Unlock(c->TrafficLock);


  s->UpdatedServerType = s->ServerType = CfgGetInt(f, "ServerType");


  if (CfgGetByte(f, "HashedPassword", s->HashedPassword, sizeof(s->HashedPassword)) != sizeof(s->HashedPassword))
  {
   Sha0(s->HashedPassword, "", 0);
  }

  if (s->ServerType != SERVER_TYPE_STANDALONE)
  {

   s->Weight = CfgGetInt(f, "ClusterMemberWeight");
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
   s->ControllerOnly = CfgGetBool(f, "ControllerOnly");
  }

  if (s->ServerType != SERVER_TYPE_STANDALONE)
  {

   s->DisableNatTraversal = 1;
   s->DisableSSTPServer = 1;
   s->DisableOpenVPNServer = 1;
  }

  if (s->Cedar->Bridge)
  {

   s->DisableNatTraversal = 1;
   s->DisableSSTPServer = 1;
   s->DisableOpenVPNServer = 1;
  }


  if (CfgGetStr(f, "OpenVPN_UdpPortList", tmp, sizeof(tmp)) == 0)
  {
   {
    ToStr(tmp, OPENVPN_UDP_PORT);
   }
  }


  Zero(&config, sizeof(config));
  config.EnableOpenVPN = !s->DisableOpenVPNServer;
  config.EnableSSTP = !s->DisableSSTPServer;
  StrCpy(config.OpenVPNPortList, sizeof(config.OpenVPNPortList), tmp);

  config.OpenVPNObfuscation = CfgGetBool(f, "OpenVPNObfuscation");

  if (CfgGetStr(f, "OpenVPNObfuscationMask", tmp, sizeof(tmp)))
  {
   if (IsEmptyStr(tmp) == 0)
   {
    StrCpy(config.OpenVPNObfuscationMask, sizeof(config.OpenVPNObfuscationMask), tmp);
   }
  }

  SiSetOpenVPNAndSSTPConfig(s, &config);

  if (s->ServerType == SERVER_TYPE_FARM_MEMBER)
  {
   char tmp[6 * MAX_PUBLIC_PORT_NUM + 1];

   CfgGetStr(f, "ControllerName", s->ControllerName, sizeof(s->ControllerName));
   s->ControllerPort = CfgGetInt(f, "ControllerPort");
   CfgGetByte(f, "MemberPassword", s->MemberPassword, SHA1_SIZE);
   s->PublicIp = CfgGetIp32(f, "PublicIp");
   if (CfgGetStr(f, "PublicPorts", tmp, sizeof(tmp)))
   {
    TOKEN_LIST *t = ParseToken(tmp, ", ");
    UINT i;
    s->NumPublicPort = t->NumTokens;
    s->PublicPorts = ZeroMalloc(s->NumPublicPort * sizeof(UINT));
    for (i = 0;i < s->NumPublicPort;i++)
    {
     s->PublicPorts[i] = ToInt(t->Token[i]);
    }
    FreeToken(t);
   }
  }


  s->EnableVpnAzure = CfgGetBool(f, "EnableVpnAzure");


  s->DisableGetHostNameWhenAcceptTcp = CfgGetBool(f, "DisableGetHostNameWhenAcceptTcp");

  if (s->DisableGetHostNameWhenAcceptTcp)
  {
   DisableGetHostNameWhenAcceptInit();
  }


  s->DisableCoreDumpOnUnix = CfgGetBool(f, "DisableCoreDumpOnUnix");


  SetGlobalServerFlag(GSF_DISABLE_SESSION_RECONNECT, CfgGetBool(f, "DisableSessionReconnect"));

  c->SslAcceptSettings.Tls_Disable1_0 = CfgGetBool(f, "Tls_Disable1_0");
  c->SslAcceptSettings.Tls_Disable1_1 = CfgGetBool(f, "Tls_Disable1_1");
  c->SslAcceptSettings.Tls_Disable1_2 = CfgGetBool(f, "Tls_Disable1_2");

  s->StrictSyslogDatetimeFormat = CfgGetBool(f, "StrictSyslogDatetimeFormat");


  s->DisableJsonRpcWebApi = CfgGetBool(f, "DisableJsonRpcWebApi");


  c->DhParamBits = CfgGetInt(f, "DhParamBits");
  if (c->DhParamBits == 0)
  {
   c->DhParamBits = DH_PARAM_BITS_DEFAULT;
  }

  SetDhParam(DhNewFromBits(c->DhParamBits));
  if (s->OpenVpnServerUdp)
  {
   OpenVpnServerUdpSetDhParam(s->OpenVpnServerUdp, DhNewFromBits(c->DhParamBits));
  }
 }
 Unlock(c->lock);







}
