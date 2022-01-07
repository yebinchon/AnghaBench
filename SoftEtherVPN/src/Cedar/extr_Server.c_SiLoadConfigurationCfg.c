
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int t ;
typedef int machine_name2 ;
typedef int machine_name ;
typedef int key ;
typedef int UCHAR ;
struct TYPE_23__ {int Bridge; } ;
struct TYPE_22__ {char* ProxyHostName; char* ProxyUsername; char* CustomHttpHeader; int ProxyPassword; void* ProxyPort; void* ProxyType; } ;
struct TYPE_21__ {scalar_t__ ServerType; void* IPsecMessageDisplayed; TYPE_4__* Cedar; void* DDnsClient; void* ConfigRevision; } ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ INTERNET_SETTING ;
typedef int HUB ;
typedef int FOLDER ;
typedef int BUF ;


 void* CfgGetBool (int *,char*) ;
 int * CfgGetBuf (int *,char*) ;
 int CfgGetByte (int *,char*,int *,int) ;
 int * CfgGetFolder (int *,char*) ;
 void* CfgGetInt (int *,char*) ;
 int CfgGetStr (int *,char*,char*,int) ;
 scalar_t__ CfgIsItem (int *,char*) ;
 char* DecryptPassword (int *) ;
 int DelHub (TYPE_4__*,int *) ;
 int DestroyServerCapsCache (TYPE_1__*) ;
 int Free (char*) ;
 int FreeBuf (int *) ;
 int * GetHub (TYPE_4__*,int ) ;
 int GetMachineHostName (char*,int) ;
 scalar_t__ GetServerCapsBool (TYPE_1__*,char*) ;
 int InitEth () ;
 int LockHubList (TYPE_4__*) ;
 int MAX_SIZE ;
 void* NewDDNSClient (TYPE_4__*,int *,TYPE_2__*) ;
 int ReleaseHub (int *) ;
 scalar_t__ SERVER_TYPE_FARM_MEMBER ;
 int SHA1_SIZE ;
 int SLog (TYPE_4__*,char*) ;
 int SiLoadHubs (TYPE_1__*,int *) ;
 int SiLoadIPsec (TYPE_1__*,int *) ;
 int SiLoadL3Switchs (TYPE_1__*,int *) ;
 int SiLoadLicenseManager (TYPE_1__*,int *) ;
 int SiLoadListeners (TYPE_1__*,int *) ;
 int SiLoadLocalBridges (TYPE_1__*,int *) ;
 int SiLoadServerCfg (TYPE_1__*,int *) ;
 int StopHub (int *) ;
 scalar_t__ StrCmpi (char*,char*) ;
 int StrCpy (int ,int,char*) ;
 int UnlockHubList (TYPE_4__*) ;
 int VG_HUBNAME ;
 int Win32SetEnableSeLow (int) ;
 int Zero (TYPE_2__*,int) ;

bool SiLoadConfigurationCfg(SERVER *s, FOLDER *root)
{
 FOLDER *f1, *f2, *f3, *f4, *f5, *f6, *f7, *f8, *f;

 if (s == ((void*)0) || root == ((void*)0))
 {
  return 0;
 }

 f = ((void*)0);


 f1 = CfgGetFolder(root, "ServerConfiguration");
 f2 = CfgGetFolder(root, "VirtualHUB");
 f3 = CfgGetFolder(root, "ListenerList");
 f4 = CfgGetFolder(root, "LocalBridgeList");
 f5 = CfgGetFolder(root, "VirtualLayer3SwitchList");
 f6 = CfgGetFolder(root, "LicenseManager");
 f7 = CfgGetFolder(root, "IPsec");
 f8 = CfgGetFolder(root, "DDnsClient");

 if (f1 == ((void*)0))
 {
  SLog(s->Cedar, "LS_BAD_CONFIG");
  return 0;
 }
 InitEth();

 s->ConfigRevision = CfgGetInt(root, "ConfigRevision");

 if (s->Cedar->Bridge == 0 && f6 != ((void*)0))
 {
  if (GetServerCapsBool(s, "b_support_license"))
  {
   SiLoadLicenseManager(s, f6);
  }
 }

 DestroyServerCapsCache(s);

 SiLoadServerCfg(s, f1);

 if (s->ServerType != SERVER_TYPE_FARM_MEMBER)
 {
  SiLoadHubs(s, f2);
 }

 SiLoadListeners(s, f3);

 if (f4 != ((void*)0))
 {
  SiLoadLocalBridges(s, f4);
 }

 if (s->Cedar->Bridge == 0 && f5 != ((void*)0))
 {
  SiLoadL3Switchs(s, f5);
 }

 if (f7 != ((void*)0) && GetServerCapsBool(s, "b_support_ipsec"))
 {
  SiLoadIPsec(s, f7);
 }

 if (s->Cedar->Bridge == 0)
 {
  if (f8 == ((void*)0))
  {

   s->DDnsClient = NewDDNSClient(s->Cedar, ((void*)0), ((void*)0));
  }
  else
  {

   UCHAR key[SHA1_SIZE];
   if (CfgGetBool(f8, "Disabled"))
   {

   }
   else
   {
    char machine_name[MAX_SIZE];
    char machine_name2[MAX_SIZE];
    INTERNET_SETTING t;
    BUF *pw;


    Zero(&t, sizeof(t));
    t.ProxyType = CfgGetInt(f8, "ProxyType");
    CfgGetStr(f8, "ProxyHostName", t.ProxyHostName, sizeof(t.ProxyHostName));
    t.ProxyPort = CfgGetInt(f8, "ProxyPort");
    CfgGetStr(f8, "ProxyUsername", t.ProxyUsername, sizeof(t.ProxyUsername));
    pw = CfgGetBuf(f8, "ProxyPassword");
    if (pw != ((void*)0))
    {
     char *pw_str = DecryptPassword(pw);
     StrCpy(t.ProxyPassword, sizeof(t.ProxyPassword), pw_str);

     Free(pw_str);
     FreeBuf(pw);
    }

    CfgGetStr(f8, "CustomHttpHeader", t.CustomHttpHeader, sizeof(t.CustomHttpHeader));

    GetMachineHostName(machine_name, sizeof(machine_name));

    CfgGetStr(f8, "LocalHostname", machine_name2, sizeof(machine_name2));

    if (CfgGetByte(f8, "Key", key, sizeof(key)) != sizeof(key) || StrCmpi(machine_name, machine_name2) != 0)
    {

     s->DDnsClient = NewDDNSClient(s->Cedar, ((void*)0), &t);
    }
    else
    {

     s->DDnsClient = NewDDNSClient(s->Cedar, key, &t);
    }
   }
  }
 }


 {
  HUB *h = ((void*)0);


  LockHubList(s->Cedar);
  {
   h = GetHub(s->Cedar, VG_HUBNAME);
  }
  UnlockHubList(s->Cedar);

  if (h != ((void*)0))
  {
   StopHub(h);
   DelHub(s->Cedar, h);
   ReleaseHub(h);
  }
 }

 s->IPsecMessageDisplayed = CfgGetBool(root, "IPsecMessageDisplayed");


 return 1;
}
