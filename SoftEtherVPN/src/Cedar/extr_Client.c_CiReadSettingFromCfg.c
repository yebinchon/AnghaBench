
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_12__ ;


typedef int user_agent ;
typedef int t ;
struct TYPE_19__ {int Enabled; int Name; } ;
typedef TYPE_2__ UNIX_VLAN ;
typedef scalar_t__ UINT ;
struct TYPE_23__ {scalar_t__ OsType; } ;
struct TYPE_17__ {int NicDownOnDisconnect; } ;
struct TYPE_22__ {TYPE_4__* CmSetting; void* DontSavePassword; TYPE_1__* Cedar; void* UseSecureDeviceId; void* PasswordRemoteOnly; int EncryptedPassword; int UnixVLanList; TYPE_12__ Config; int Logger; int Eraser; int CommonProxySetting; } ;
struct TYPE_21__ {int HashedPassword; void* LockMode; void* EasyMode; } ;
struct TYPE_20__ {char* ProxyHostName; char* ProxyUsername; char* CustomHttpHeader; int ProxyPassword; void* ProxyPort; void* ProxyType; } ;
struct TYPE_18__ {char* HttpUserAgent; } ;
typedef TYPE_3__ INTERNET_SETTING ;
typedef int FOLDER ;
typedef TYPE_4__ CM_SETTING ;
typedef TYPE_5__ CLIENT ;
typedef int BUF ;


 int Add (int ,TYPE_2__*) ;
 int Alert (char*,int *) ;
 char* CLIENT_MACOS_TAP_NAME ;
 int CLog (TYPE_5__*,char*) ;
 void* CfgGetBool (int *,char*) ;
 int * CfgGetBuf (int *,char*) ;
 int CfgGetByte (int *,char*,int ,int) ;
 int * CfgGetFolder (int *,char*) ;
 void* CfgGetInt (int *,char*) ;
 int CfgGetInt64 (int *,char*) ;
 scalar_t__ CfgGetStr (int *,char*,char*,int) ;
 int CiLoadAccountDatabase (TYPE_5__*,int *) ;
 int CiLoadCAList (TYPE_5__*,int *) ;
 int CiLoadClientConfig (TYPE_12__*,int *) ;
 int CiLoadVLanList (TYPE_5__*,int *) ;
 int Copy (int *,TYPE_3__*,int) ;
 char* CopyStr (char*) ;
 char* DecryptPassword (int *) ;
 int Free (char*) ;
 int FreeBuf (int *) ;
 TYPE_8__* GetOsInfo () ;
 int IsEmptyStr (char*) ;
 int MAX_SIZE ;
 int NewEraser (int ,int ) ;
 scalar_t__ OSTYPE_MACOS_X ;
 scalar_t__ OS_IS_UNIX (scalar_t__) ;
 scalar_t__ OS_IS_WINDOWS_NT (scalar_t__) ;
 int SHA1_SIZE ;
 int Sha0 (int ,char*,int ) ;
 int StrCpy (int ,int,char*) ;
 int UnixVLanCreate (char*,int *,int) ;
 int Zero (TYPE_3__*,int) ;
 TYPE_2__* ZeroMalloc (int) ;
 int exit (int ) ;

bool CiReadSettingFromCfg(CLIENT *c, FOLDER *root)
{
 FOLDER *config;
 FOLDER *cert;
 FOLDER *db;
 FOLDER *vlan;
 FOLDER *cmsetting;
 FOLDER *proxy;
 char user_agent[MAX_SIZE];

 if (c == ((void*)0) || root == ((void*)0))
 {
  return 0;
 }


 config = CfgGetFolder(root, "Config");
 if (config == ((void*)0))
 {
  return 0;
 }

 db = CfgGetFolder(root, "AccountDatabase");
 if (db == ((void*)0))
 {
  return 0;
 }

 cmsetting = CfgGetFolder(root, "ClientManagerSetting");

 CiLoadClientConfig(&c->Config, config);


 proxy = CfgGetFolder(root, "CommonProxySetting");

 if (proxy != ((void*)0))
 {
  INTERNET_SETTING t;
  BUF *pw;


  Zero(&t, sizeof(t));
  t.ProxyType = CfgGetInt(proxy, "ProxyType");
  CfgGetStr(proxy, "ProxyHostName", t.ProxyHostName, sizeof(t.ProxyHostName));
  t.ProxyPort = CfgGetInt(proxy, "ProxyPort");
  CfgGetStr(proxy, "ProxyUsername", t.ProxyUsername, sizeof(t.ProxyUsername));
  pw = CfgGetBuf(proxy, "ProxyPassword");
  if (pw != ((void*)0))
  {
   char *pw_str = DecryptPassword(pw);
   StrCpy(t.ProxyPassword, sizeof(t.ProxyPassword), pw_str);

   Free(pw_str);
   FreeBuf(pw);
  }

  CfgGetStr(proxy, "CustomHttpHeader", t.CustomHttpHeader, sizeof(t.CustomHttpHeader));

  Copy(&c->CommonProxySetting, &t, sizeof(INTERNET_SETTING));
 }


 c->Eraser = NewEraser(c->Logger, CfgGetInt64(config, "AutoDeleteCheckDiskFreeSpaceMin"));

 if (OS_IS_UNIX(GetOsInfo()->OsType)



     )
 {

  vlan = CfgGetFolder(root, "UnixVLan");
  if (vlan != ((void*)0))
  {
   CiLoadVLanList(c, vlan);
  }
 }
 CiLoadAccountDatabase(c, db);

 if (CfgGetByte(root, "EncryptedPassword", c->EncryptedPassword, SHA1_SIZE) == 0)
 {
  Sha0(c->EncryptedPassword, "", 0);
 }

 c->PasswordRemoteOnly = CfgGetBool(root, "PasswordRemoteOnly");
 c->UseSecureDeviceId = CfgGetInt(root, "UseSecureDeviceId");

 if (CfgGetStr(root, "UserAgent", user_agent, sizeof(user_agent)))
 {
  if (IsEmptyStr(user_agent) == 0)
  {
   Free(c->Cedar->HttpUserAgent);
   c->Cedar->HttpUserAgent = CopyStr(user_agent);
  }
 }

 cert = CfgGetFolder(root, "RootCA");
 if (cert != ((void*)0))
 {
  CiLoadCAList(c, cert);
 }

 c->DontSavePassword = CfgGetBool(root, "DontSavePassword");

 if (cmsetting != ((void*)0))
 {
  UINT ostype = GetOsInfo()->OsType;

  CM_SETTING *s = c->CmSetting;

  if (OS_IS_UNIX(ostype) || OS_IS_WINDOWS_NT(ostype))
  {
   s->EasyMode = CfgGetBool(cmsetting, "EasyMode");
  }

  s->LockMode = CfgGetBool(cmsetting, "LockMode");
  CfgGetByte(cmsetting, "HashedPassword", s->HashedPassword, sizeof(s->HashedPassword));
 }

 return 1;
}
