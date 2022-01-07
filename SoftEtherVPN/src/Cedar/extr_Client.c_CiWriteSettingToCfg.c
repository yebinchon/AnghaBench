
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ OsType; } ;
struct TYPE_13__ {int CustomHttpHeader; int ProxyPassword; int ProxyUsername; int ProxyPort; int ProxyHostName; int ProxyType; } ;
struct TYPE_15__ {TYPE_4__* CmSetting; TYPE_2__* Cedar; int DontSavePassword; int UseSecureDeviceId; int PasswordRemoteOnly; int EncryptedPassword; TYPE_3__ CommonProxySetting; TYPE_1__* Eraser; int Config; } ;
struct TYPE_14__ {int HashedPassword; int LockMode; int EasyMode; } ;
struct TYPE_12__ {int HttpUserAgent; } ;
struct TYPE_11__ {int MinFreeSpace; } ;
typedef TYPE_3__ INTERNET_SETTING ;
typedef int FOLDER ;
typedef TYPE_4__ CM_SETTING ;
typedef TYPE_5__ CLIENT ;
typedef int BUF ;


 int CfgAddBool (int *,char*,int ) ;
 int CfgAddBuf (int *,char*,int *) ;
 int CfgAddByte (int *,char*,int ,int) ;
 int CfgAddInt (int *,char*,int ) ;
 int CfgAddInt64 (int *,char*,int ) ;
 int CfgAddStr (int *,char*,int ) ;
 int * CfgCreateFolder (int *,char*) ;
 int CiWriteAccountDatabase (TYPE_5__*,int *) ;
 int CiWriteCAList (TYPE_5__*,int *) ;
 int CiWriteClientConfig (int *,int *) ;
 int CiWriteVLanList (TYPE_5__*,int *) ;
 int * EncryptPassword (int ) ;
 int FreeBuf (int *) ;
 TYPE_6__* GetOsInfo () ;
 int IsEmptyStr (int ) ;
 int IsZero (int ,int) ;
 scalar_t__ OSTYPE_MACOS_X ;
 scalar_t__ OS_IS_UNIX (scalar_t__) ;
 int SHA1_SIZE ;

void CiWriteSettingToCfg(CLIENT *c, FOLDER *root)
{
 FOLDER *cc;
 FOLDER *account_database;
 FOLDER *ca;
 FOLDER *vlan;
 FOLDER *cmsetting;
 FOLDER *proxy;

 if (c == ((void*)0) || root == ((void*)0))
 {
  return;
 }

 cmsetting = CfgCreateFolder(root, "ClientManagerSetting");


 cc = CfgCreateFolder(root, "Config");
 CiWriteClientConfig(cc, &c->Config);



 CfgAddInt64(cc, "AutoDeleteCheckDiskFreeSpaceMin", c->Eraser->MinFreeSpace);


 account_database = CfgCreateFolder(root, "AccountDatabase");
 CiWriteAccountDatabase(c, account_database);


 proxy = CfgCreateFolder(root, "CommonProxySetting");
 if (proxy != ((void*)0))
 {
  INTERNET_SETTING *t = &c->CommonProxySetting;
  BUF *pw;

  CfgAddInt(proxy, "ProxyType", t->ProxyType);
  CfgAddStr(proxy, "ProxyHostName", t->ProxyHostName);
  CfgAddInt(proxy, "ProxyPort", t->ProxyPort);
  CfgAddStr(proxy, "ProxyUsername", t->ProxyUsername);

  if (IsEmptyStr(t->ProxyPassword) == 0)
  {
   pw = EncryptPassword(t->ProxyPassword);

   CfgAddBuf(proxy, "ProxyPassword", pw);

   FreeBuf(pw);
  }

  CfgAddStr(proxy, "CustomHttpHeader", t->CustomHttpHeader);
 }


 ca = CfgCreateFolder(root, "RootCA");
 CiWriteCAList(c, ca);


 if (OS_IS_UNIX(GetOsInfo()->OsType)



     )
 {
  vlan = CfgCreateFolder(root, "UnixVLan");
  CiWriteVLanList(c, vlan);
 }


 CfgAddByte(root, "EncryptedPassword", c->EncryptedPassword, SHA1_SIZE);
 CfgAddBool(root, "PasswordRemoteOnly", c->PasswordRemoteOnly);


 CfgAddInt(root, "UseSecureDeviceId", c->UseSecureDeviceId);


 CfgAddBool(root, "DontSavePassword", c->DontSavePassword);


 if (c->Cedar != ((void*)0))
 {
  CfgAddStr(root, "UserAgent", c->Cedar->HttpUserAgent);
 }

 if (cmsetting != ((void*)0))
 {
  CM_SETTING *s = c->CmSetting;

  CfgAddBool(cmsetting, "EasyMode", s->EasyMode);
  CfgAddBool(cmsetting, "LockMode", s->LockMode);

  if (IsZero(s->HashedPassword, sizeof(s->HashedPassword)) == 0)
  {
   CfgAddByte(cmsetting, "HashedPassword", s->HashedPassword, sizeof(s->HashedPassword));
  }
 }
}
