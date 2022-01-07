
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_12__ ;


typedef int region ;
typedef int machine_name ;
struct TYPE_17__ {char* ProxyHostName; char* ProxyUsername; char* CustomHttpHeader; int ProxyPassword; int ProxyPort; int ProxyType; } ;
struct TYPE_16__ {scalar_t__ UpdatedServerType; int LedSpecial; int IPsecMessageDisplayed; TYPE_1__* DDnsClient; TYPE_12__* Cedar; scalar_t__ Led; int ConfigRevision; } ;
struct TYPE_15__ {TYPE_3__ InternetSetting; int Key; } ;
struct TYPE_14__ {int Bridge; } ;
typedef TYPE_2__ SERVER ;
typedef TYPE_3__ INTERNET_SETTING ;
typedef int FOLDER ;
typedef int BUF ;


 int CfgAddBool (int *,char*,int) ;
 int CfgAddBuf (int *,char*,int *) ;
 int CfgAddByte (int *,char*,int ,int ) ;
 int CfgAddInt (int *,char*,int ) ;
 int CfgAddStr (int *,char*,char*) ;
 int * CfgCreateFolder (int *,char*) ;
 int * EncryptPassword (int ) ;
 int FreeBuf (int *) ;
 int GetMachineHostName (char*,int) ;
 scalar_t__ GetServerCapsBool (TYPE_2__*,char*) ;
 int IsEmptyStr (int ) ;
 int MAX_SIZE ;
 scalar_t__ SERVER_TYPE_FARM_MEMBER ;
 int SHA1_SIZE ;
 int SiGetCurrentRegion (TYPE_12__*,char*,int) ;
 int SiWriteHubs (int *,TYPE_2__*) ;
 int SiWriteIPsec (int *,TYPE_2__*) ;
 int SiWriteL3Switchs (int *,TYPE_2__*) ;
 int SiWriteLicenseManager (int *,TYPE_2__*) ;
 int SiWriteListeners (int *,TYPE_2__*) ;
 int SiWriteLocalBridges (int *,TYPE_2__*) ;
 int SiWriteServerCfg (int *,TYPE_2__*) ;
 char* TAG_ROOT ;

FOLDER *SiWriteConfigurationToCfg(SERVER *s)
{
 FOLDER *root;
 char region[128];

 if (s == ((void*)0))
 {
  return ((void*)0);
 }

 root = CfgCreateFolder(((void*)0), TAG_ROOT);

 SiGetCurrentRegion(s->Cedar, region, sizeof(region));

 CfgAddStr(root, "Region", region);

 CfgAddInt(root, "ConfigRevision", s->ConfigRevision);

 SiWriteListeners(CfgCreateFolder(root, "ListenerList"), s);

 SiWriteLocalBridges(CfgCreateFolder(root, "LocalBridgeList"), s);

 SiWriteServerCfg(CfgCreateFolder(root, "ServerConfiguration"), s);


 if (s->UpdatedServerType != SERVER_TYPE_FARM_MEMBER)
 {
  SiWriteHubs(CfgCreateFolder(root, "VirtualHUB"), s);
 }

 if (s->Cedar->Bridge == 0)
 {
  SiWriteL3Switchs(CfgCreateFolder(root, "VirtualLayer3SwitchList"), s);

  if (GetServerCapsBool(s, "b_support_license"))
  {
   SiWriteLicenseManager(CfgCreateFolder(root, "LicenseManager"), s);
  }
 }

 if (s->Led)
 {
  CfgAddBool(root, "Led", 1);
  CfgAddBool(root, "LedSpecial", s->LedSpecial);
 }

 if (GetServerCapsBool(s, "b_support_ipsec"))
 {
  SiWriteIPsec(CfgCreateFolder(root, "IPsec"), s);
 }

 if (s->Cedar->Bridge == 0)
 {
  FOLDER *ddns_folder = CfgCreateFolder(root, "DDnsClient");

  if (s->DDnsClient == ((void*)0))
  {

   CfgAddBool(ddns_folder, "Disabled", 1);
  }
  else
  {
   char machine_name[MAX_SIZE];
   BUF *pw;
   INTERNET_SETTING *t;

   CfgAddBool(ddns_folder, "Disabled", 0);
   CfgAddByte(ddns_folder, "Key", s->DDnsClient->Key, SHA1_SIZE);

   GetMachineHostName(machine_name, sizeof(machine_name));
   CfgAddStr(ddns_folder, "LocalHostname", machine_name);

   t = &s->DDnsClient->InternetSetting;

   CfgAddInt(ddns_folder, "ProxyType", t->ProxyType);
   CfgAddStr(ddns_folder, "ProxyHostName", t->ProxyHostName);
   CfgAddInt(ddns_folder, "ProxyPort", t->ProxyPort);
   CfgAddStr(ddns_folder, "ProxyUsername", t->ProxyUsername);

   if (IsEmptyStr(t->ProxyPassword) == 0)
   {
    pw = EncryptPassword(t->ProxyPassword);

    CfgAddBuf(ddns_folder, "ProxyPassword", pw);

    FreeBuf(pw);
   }

   CfgAddStr(ddns_folder, "CustomHttpHeader", t->CustomHttpHeader);
  }
 }

 CfgAddBool(root, "IPsecMessageDisplayed", s->IPsecMessageDisplayed);


 return root;
}
