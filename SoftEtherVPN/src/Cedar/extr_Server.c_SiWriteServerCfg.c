
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_14__ ;


typedef int tmp ;
typedef int str ;
typedef scalar_t__ UINT ;
struct TYPE_16__ {int Tls_Disable1_2; int Tls_Disable1_1; int Tls_Disable1_0; } ;
struct TYPE_23__ {int Build; int Bridge; char* OpenVPNDefaultClientOption; char* CipherList; int DhParamBits; int lock; TYPE_1__ SslAcceptSettings; int TrafficLock; int Traffic; int UsernameHubSeparator; int ServerK; int ServerX; int OpenVPNPushDummyIPv4AddressOnL2Mode; int DisableIPv6Listener; } ;
struct TYPE_22__ {char* ServerName; int ServerPort; int UdpMode; int Interval; int lock; int Enable; } ;
struct TYPE_21__ {char* OpenVPNPortList; char* OpenVPNObfuscationMask; int OpenVPNObfuscation; } ;
struct TYPE_20__ {int AutoSaveConfigSpanSaved; int ServerType; int UpdatedServerType; char* ControllerName; int ControllerPort; scalar_t__ NumPublicPort; int Weight; int DisableJsonRpcWebApi; int StrictSyslogDatetimeFormat; int DisableCoreDumpOnUnix; int DisableGetHostNameWhenAcceptTcp; int EnableVpnAzure; int * AzureClient; int ControllerOnly; int * PublicPorts; int PublicIp; int MemberPassword; int HashedPassword; TYPE_8__* Cedar; int NoSendSignature; int SaveDebugLog; int UseWebTimePage; int EnableVpnOverDns; int EnableVpnOverIcmp; int DisableOpenVPNServer; int DisableSSTPServer; int DisableNatTraversal; int NoDebugDump; int NoHighPriorityProcess; int NoLinuxArpFilter; int UseWebUI; TYPE_3__* Eraser; int DisableDeadLockCheck; int DisableDosProtection; TYPE_7__* Keep; TYPE_2__* Logger; int ListenIP; int BackupConfigOnlyWhenModified; int DontBackupConfig; } ;
struct TYPE_19__ {int SaveType; char* Hostname; int Port; } ;
struct TYPE_18__ {int MinFreeSpace; } ;
struct TYPE_17__ {int SwitchType; } ;
struct TYPE_15__ {scalar_t__ OsType; } ;
typedef TYPE_4__ SYSLOG_SETTING ;
typedef TYPE_5__ SERVER ;
typedef TYPE_6__ OPENVPN_SSTP_CONFIG ;
typedef TYPE_7__ KEEP ;
typedef int FOLDER ;
typedef TYPE_8__ CEDAR ;
typedef int BUF ;


 int CfgAddBool (int *,char*,int ) ;
 int CfgAddBuf (int *,char*,int *) ;
 int CfgAddByte (int *,char*,int ,int) ;
 int CfgAddInt (int *,char*,int) ;
 int CfgAddInt64 (int *,char*,int ) ;
 int CfgAddIp (int *,char*,int *) ;
 int CfgAddIp32 (int *,char*,int ) ;
 int CfgAddStr (int *,char*,char*) ;
 int * CfgCreateFolder (int *,char*) ;
 int FreeBuf (int *) ;
 int GSF_DISABLE_SESSION_RECONNECT ;
 int GetEraserCheckInterval () ;
 int GetGetIpThreadMaxNum () ;
 int GetGlobalServerFlag (int ) ;
 int GetMaxConnectionsPerIp () ;
 int GetMaxLogSize () ;
 int GetMaxUnestablishedConnections () ;
 TYPE_14__* GetOsInfo () ;
 int * KToBuf (int ,int,int *) ;
 int Lock (int ) ;
 int MAX_PUBLIC_PORT_NUM ;
 int MAX_SIZE ;
 scalar_t__ OSTYPE_LINUX ;
 int SERVER_TYPE_FARM_CONTROLLER ;
 int SERVER_TYPE_FARM_MEMBER ;
 int SERVER_TYPE_STANDALONE ;
 int SHA1_SIZE ;
 int SiGetOpenVPNAndSSTPConfig (TYPE_5__*,TYPE_6__*) ;
 int SiGetSysLogSetting (TYPE_5__*,TYPE_4__*) ;
 int SiWriteGlobalParamsCfg (int *) ;
 int SiWriteTraffic (int *,char*,int ) ;
 int StrCat (char*,int,char*) ;
 int StrCpy (char*,int,int *) ;
 int StrLen (char*) ;
 int ToStr (char*,int ) ;
 int Unlock (int ) ;
 int * XToBuf (int ,int) ;

void SiWriteServerCfg(FOLDER *f, SERVER *s)
{
 BUF *b;
 CEDAR *c;
 FOLDER *params_folder;

 if (f == ((void*)0) || s == ((void*)0))
 {
  return;
 }

 CfgAddInt(f, "MaxConcurrentDnsClientThreads", GetGetIpThreadMaxNum());

 CfgAddInt(f, "CurrentBuild", s->Cedar->Build);

 CfgAddInt(f, "AutoSaveConfigSpan", s->AutoSaveConfigSpanSaved / 1000);

 CfgAddBool(f, "DontBackupConfig", s->DontBackupConfig);
 CfgAddBool(f, "BackupConfigOnlyWhenModified", s->BackupConfigOnlyWhenModified);

 CfgAddIp(f, "ListenIP", &s->ListenIP);

 if (s->Logger != ((void*)0))
 {
  CfgAddInt(f, "ServerLogSwitchType", s->Logger->SwitchType);
 }

 CfgAddInt64(f, "LoggerMaxLogSize", GetMaxLogSize());

 params_folder = CfgCreateFolder(f, "GlobalParams");

 if (params_folder != ((void*)0))
 {
  SiWriteGlobalParamsCfg(params_folder);
 }

 c = s->Cedar;

 Lock(c->lock);
 {
  FOLDER *syslog_f;
  Lock(s->Keep->lock);
  {
   KEEP *k = s->Keep;
   CfgAddBool(f, "UseKeepConnect", k->Enable);
   CfgAddStr(f, "KeepConnectHost", k->ServerName);
   CfgAddInt(f, "KeepConnectPort", k->ServerPort);
   CfgAddInt(f, "KeepConnectProtocol", k->UdpMode);
   CfgAddInt(f, "KeepConnectInterval", k->Interval / 1000);
  }
  Unlock(s->Keep->lock);


  syslog_f = CfgCreateFolder(f, "SyslogSettings");
  if (syslog_f != ((void*)0))
  {
   SYSLOG_SETTING set;

   SiGetSysLogSetting(s, &set);

   CfgAddInt(syslog_f, "SaveType", set.SaveType);
   CfgAddStr(syslog_f, "HostName", set.Hostname);
   CfgAddInt(syslog_f, "Port", set.Port);
  }


  CfgAddBool(f, "DisableIPv6Listener", s->Cedar->DisableIPv6Listener);


  CfgAddBool(f, "DisableDosProtection", s->DisableDosProtection);


  CfgAddInt(f, "MaxConnectionsPerIP", GetMaxConnectionsPerIp());


  CfgAddInt(f, "MaxUnestablishedConnections", GetMaxUnestablishedConnections());


  CfgAddBool(f, "DisableDeadLockCheck", s->DisableDeadLockCheck);


  CfgAddInt64(f, "AutoDeleteCheckDiskFreeSpaceMin", s->Eraser->MinFreeSpace);
  CfgAddInt(f, "AutoDeleteCheckIntervalSecs", GetEraserCheckInterval());


  CfgAddBool(f, "UseWebUI", s->UseWebUI);



  if (GetOsInfo()->OsType == OSTYPE_LINUX)
  {
   CfgAddBool(f, "NoLinuxArpFilter", s->NoLinuxArpFilter);
  }


  CfgAddBool(f, "NoHighPriorityProcess", s->NoHighPriorityProcess);





  if (s->ServerType == SERVER_TYPE_STANDALONE)
  {
   if (c->Bridge == 0)
   {

    CfgAddBool(f, "DisableNatTraversal", s->DisableNatTraversal);


    CfgAddBool(f, "DisableSSTPServer", s->DisableSSTPServer);


    CfgAddBool(f, "DisableOpenVPNServer", s->DisableOpenVPNServer);
   }
  }

  CfgAddStr(f, "OpenVPNDefaultClientOption", c->OpenVPNDefaultClientOption);

  CfgAddBool(f, "OpenVPNPushDummyIPv4AddressOnL2Mode", c->OpenVPNPushDummyIPv4AddressOnL2Mode);

  if (c->Bridge == 0)
  {
   OPENVPN_SSTP_CONFIG config;


   CfgAddBool(f, "EnableVpnOverIcmp", s->EnableVpnOverIcmp);


   CfgAddBool(f, "EnableVpnOverDns", s->EnableVpnOverDns);

   SiGetOpenVPNAndSSTPConfig(s, &config);

   CfgAddStr(f, "OpenVPN_UdpPortList", config.OpenVPNPortList);

   CfgAddBool(f, "OpenVPNObfuscation", config.OpenVPNObfuscation);
   CfgAddStr(f, "OpenVPNObfuscationMask", config.OpenVPNObfuscationMask);
  }


  CfgAddBool(f, "UseWebTimePage", s->UseWebTimePage);


  CfgAddBool(f, "SaveDebugLog", s->SaveDebugLog);


  CfgAddBool(f, "NoSendSignature", s->NoSendSignature);


  b = XToBuf(c->ServerX, 0);
  CfgAddBuf(f, "ServerCert", b);
  FreeBuf(b);


  b = KToBuf(c->ServerK, 0, ((void*)0));
  CfgAddBuf(f, "ServerKey", b);
  FreeBuf(b);

  {

   char str[2];
   StrCpy(str, sizeof(str), &c->UsernameHubSeparator);
   CfgAddStr(f, "UsernameHubSeparator", str);
  }


  Lock(c->TrafficLock);
  {
   SiWriteTraffic(f, "ServerTraffic", c->Traffic);
  }
  Unlock(c->TrafficLock);


  if (s->Cedar->Bridge == 0)
  {
   CfgAddInt(f, "ServerType", s->UpdatedServerType);
  }


  CfgAddStr(f, "CipherName", s->Cedar->CipherList);


  CfgAddByte(f, "HashedPassword", s->HashedPassword, sizeof(s->HashedPassword));

  if (s->UpdatedServerType == SERVER_TYPE_FARM_MEMBER)
  {
   char tmp[6 * MAX_PUBLIC_PORT_NUM + 1];
   UINT i;

   CfgAddStr(f, "ControllerName", s->ControllerName);
   CfgAddInt(f, "ControllerPort", s->ControllerPort);
   CfgAddByte(f, "MemberPassword", s->MemberPassword, SHA1_SIZE);
   CfgAddIp32(f, "PublicIp", s->PublicIp);
   tmp[0] = 0;
   for (i = 0;i < s->NumPublicPort;i++)
   {
    char tmp2[MAX_SIZE];
    ToStr(tmp2, s->PublicPorts[i]);
    StrCat(tmp, sizeof(tmp), tmp2);
    StrCat(tmp, sizeof(tmp), ",");
   }
   if (StrLen(tmp) >= 1)
   {
    if (tmp[StrLen(tmp) - 1] == ',')
    {
     tmp[StrLen(tmp) - 1] = 0;
    }
   }
   CfgAddStr(f, "PublicPorts", tmp);
  }

  if (s->UpdatedServerType != SERVER_TYPE_STANDALONE)
  {
   CfgAddInt(f, "ClusterMemberWeight", s->Weight);
  }

  if (s->UpdatedServerType == SERVER_TYPE_FARM_CONTROLLER)
  {
   CfgAddBool(f, "ControllerOnly", s->ControllerOnly);
  }


  if (s->AzureClient != ((void*)0))
  {
   CfgAddBool(f, "EnableVpnAzure", s->EnableVpnAzure);
  }

  CfgAddBool(f, "DisableGetHostNameWhenAcceptTcp", s->DisableGetHostNameWhenAcceptTcp);
  CfgAddBool(f, "DisableCoreDumpOnUnix", s->DisableCoreDumpOnUnix);

  CfgAddBool(f, "Tls_Disable1_0", c->SslAcceptSettings.Tls_Disable1_0);
  CfgAddBool(f, "Tls_Disable1_1", c->SslAcceptSettings.Tls_Disable1_1);
  CfgAddBool(f, "Tls_Disable1_2", c->SslAcceptSettings.Tls_Disable1_2);
  CfgAddInt(f, "DhParamBits", c->DhParamBits);


  CfgAddBool(f, "DisableSessionReconnect", GetGlobalServerFlag(GSF_DISABLE_SESSION_RECONNECT));

  CfgAddBool(f, "StrictSyslogDatetimeFormat", s->StrictSyslogDatetimeFormat);


  CfgAddBool(f, "DisableJsonRpcWebApi", s->DisableJsonRpcWebApi);
 }
 Unlock(c->lock);
}
