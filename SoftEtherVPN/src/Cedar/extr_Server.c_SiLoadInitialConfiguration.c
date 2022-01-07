
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_13__ ;


typedef int k ;
typedef int c ;
struct TYPE_17__ {int Enable; int Server; int ServerPort; int Interval; int lock; int UdpMode; int ServerName; } ;
struct TYPE_16__ {int UseKeepConnect; int KeepConnectPort; int KeepConnectInterval; int EnableOpenVPN; int EnableSSTP; int OpenVPNObfuscation; int OpenVPNPortList; int KeepConnectProtocol; int KeepConnectHost; } ;
struct TYPE_15__ {int BackupConfigOnlyWhenModified; int DisableNatTraversal; int DisableSSTPServer; int DisableOpenVPNServer; int EnableVpnOverIcmp; int EnableVpnOverDns; int Logger; int Eraser; TYPE_13__* Cedar; int DDnsClient; int HashedPassword; TYPE_4__* Keep; int Weight; int AutoSaveConfigSpan; } ;
struct TYPE_14__ {int Bridge; int UsernameHubSeparator; } ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ RPC_KEEP ;
typedef TYPE_2__ OPENVPN_SSTP_CONFIG ;
typedef TYPE_4__ KEEP ;


 int CLIENT_DEFAULT_KEEPALIVE_HOST ;
 int CONNECTION_UDP ;
 int DEFAULT_USERNAME_HUB_SEPARATOR ;
 int FARM_DEFAULT_WEIGHT ;
 int KEEP_INTERVAL_DEFAULT ;
 int Lock (int ) ;
 int NewDDNSClient (TYPE_13__*,int *,int *) ;
 int NewEraser (int ,int ) ;
 int OPENVPN_UDP_PORT ;
 int SERVER_FILE_SAVE_INTERVAL_DEFAULT ;
 int Sha0 (int ,char*,int ) ;
 int SiInitCipherName (TYPE_1__*) ;
 int SiInitDefaultHubList (TYPE_1__*) ;
 int SiInitDefaultServerCert (TYPE_1__*) ;
 int SiInitListenerList (TYPE_1__*) ;
 int SiLoadGlobalParamsCfg (int *) ;
 int SiSetOpenVPNAndSSTPConfig (TYPE_1__*,TYPE_2__*) ;
 int StrCpy (int ,int,int ) ;
 int ToStr (int ,int ) ;
 int Unlock (int ) ;
 int Zero (TYPE_2__*,int) ;

void SiLoadInitialConfiguration(SERVER *s)
{
 RPC_KEEP k;

 if (s == ((void*)0))
 {
  return;
 }


 s->AutoSaveConfigSpan = SERVER_FILE_SAVE_INTERVAL_DEFAULT;
 s->BackupConfigOnlyWhenModified = 1;

 s->Weight = FARM_DEFAULT_WEIGHT;

 SiLoadGlobalParamsCfg(((void*)0));


 Zero(&k, sizeof(k));

 {
  k.UseKeepConnect = 1;
 }
 k.KeepConnectPort = 80;
 StrCpy(k.KeepConnectHost, sizeof(k.KeepConnectHost), CLIENT_DEFAULT_KEEPALIVE_HOST);
 k.KeepConnectInterval = KEEP_INTERVAL_DEFAULT * 1000;
 k.KeepConnectProtocol = CONNECTION_UDP;

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


 {
  Sha0(s->HashedPassword, "", 0);
 }


 SiInitCipherName(s);


 SiInitDefaultServerCert(s);


 s->Cedar->UsernameHubSeparator = DEFAULT_USERNAME_HUB_SEPARATOR;


 {
  SiInitDefaultHubList(s);
 }

 if (s->Cedar->Bridge == 0)
 {

  s->DDnsClient = NewDDNSClient(s->Cedar, ((void*)0), ((void*)0));
 }



 SiInitListenerList(s);

 if (s->Cedar->Bridge)
 {

  s->DisableNatTraversal = 1;
  s->DisableSSTPServer = 1;
  s->DisableOpenVPNServer = 1;
 }
 else
 {

  OPENVPN_SSTP_CONFIG c;

  Zero(&c, sizeof(c));
  c.EnableOpenVPN = 1;
  c.EnableSSTP = 1;

  {
   ToStr(c.OpenVPNPortList, OPENVPN_UDP_PORT);
  }

  c.OpenVPNObfuscation = 0;

  SiSetOpenVPNAndSSTPConfig(s, &c);

  {

   s->EnableVpnOverIcmp = 0;
   s->EnableVpnOverDns = 0;
  }
 }

 s->Eraser = NewEraser(s->Logger, 0);
}
