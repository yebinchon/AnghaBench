
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ RadiusServerPort; scalar_t__ RadiusRetryInterval; int RadiusConvertAllMsChapv2AuthRequestToEap; int RadiusUsePeapInsteadOfEap; int HubIsOnlineButHalting; scalar_t__ Type; scalar_t__ NumLogin; int CreatedTime; int LastLoginTime; int LastCommTime; int HubDb; TYPE_1__* Cedar; int LogSetting; int Msg; int Option; int Traffic; scalar_t__ Offline; int SecurePassword; int HashedPassword; int RadiusOptionLock; int * RadiusRealm; int * RadiusSuffixFilter; int RadiusSecret; int * RadiusServerName; } ;
struct TYPE_8__ {int Bridge; int Server; } ;
typedef TYPE_2__ HUB ;
typedef int FOLDER ;


 int CfgAddBool (int *,char*,int) ;
 int CfgAddBuf (int *,char*,int ) ;
 int CfgAddByte (int *,char*,int ,int) ;
 int CfgAddInt (int *,char*,scalar_t__) ;
 int CfgAddInt64 (int *,char*,int ) ;
 int CfgAddStr (int *,char*,int *) ;
 int CfgAddUniStr (int *,char*,int ) ;
 int * CfgCreateFolder (int *,char*) ;
 scalar_t__ GetServerCapsBool (int ,char*) ;
 scalar_t__ HUB_TYPE_FARM_STATIC ;
 scalar_t__ HUB_TYPE_STANDALONE ;
 int IsEmptyUniStr (int ) ;
 int Lock (int ) ;
 int SiWriteHubAccessLists (int *,TYPE_2__*) ;
 int SiWriteHubAdminOptions (int *,TYPE_2__*) ;
 int SiWriteHubDb (int *,int ,int) ;
 int SiWriteHubLinks (int *,TYPE_2__*) ;
 int SiWriteHubLogCfg (int *,int *) ;
 int SiWriteHubOptionCfg (int *,int ) ;
 int SiWriteSecureNAT (TYPE_2__*,int *) ;
 int SiWriteTraffic (int *,char*,int ) ;
 int Unlock (int ) ;

void SiWriteHubCfg(FOLDER *f, HUB *h)
{

 if (f == ((void*)0) || h == ((void*)0))
 {
  return;
 }


 Lock(h->RadiusOptionLock);
 {
  if (h->RadiusServerName != ((void*)0))
  {
   CfgAddStr(f, "RadiusServerName", h->RadiusServerName);
   CfgAddBuf(f, "RadiusSecret", h->RadiusSecret);
  }
  CfgAddInt(f, "RadiusServerPort", h->RadiusServerPort);
  CfgAddInt(f, "RadiusRetryInterval", h->RadiusRetryInterval);
  CfgAddStr(f, "RadiusSuffixFilter", h->RadiusSuffixFilter);
  CfgAddStr(f, "RadiusRealm", h->RadiusRealm);

  CfgAddBool(f, "RadiusConvertAllMsChapv2AuthRequestToEap", h->RadiusConvertAllMsChapv2AuthRequestToEap);
  CfgAddBool(f, "RadiusUsePeapInsteadOfEap", h->RadiusUsePeapInsteadOfEap);
 }
 Unlock(h->RadiusOptionLock);


 CfgAddByte(f, "HashedPassword", h->HashedPassword, sizeof(h->HashedPassword));
 CfgAddByte(f, "SecurePassword", h->SecurePassword, sizeof(h->SecurePassword));


 if (h->Cedar->Bridge == 0)
 {
  CfgAddBool(f, "Online", (h->Offline && (h->HubIsOnlineButHalting == 0)) ? 0 : 1);
 }


 SiWriteTraffic(f, "Traffic", h->Traffic);


 SiWriteHubOptionCfg(CfgCreateFolder(f, "Option"), h->Option);


 {
  FOLDER *folder = CfgCreateFolder(f, "Message");

  if (IsEmptyUniStr(h->Msg) == 0)
  {
   CfgAddUniStr(folder, "MessageText", h->Msg);
  }
 }


 SiWriteHubLogCfg(CfgCreateFolder(f, "LogSetting"), &h->LogSetting);

 if (h->Type == HUB_TYPE_STANDALONE)
 {

  SiWriteHubLinks(CfgCreateFolder(f, "CascadeList"), h);
 }

 if (h->Type != HUB_TYPE_FARM_STATIC)
 {
  if (GetServerCapsBool(h->Cedar->Server, "b_support_securenat"))
  {

   SiWriteSecureNAT(h, CfgCreateFolder(f, "SecureNAT"));
  }
 }


 SiWriteHubAccessLists(CfgCreateFolder(f, "AccessList"), h);


 SiWriteHubAdminOptions(CfgCreateFolder(f, "AdminOption"), h);


 CfgAddInt(f, "Type", h->Type);


 if (h->Cedar->Bridge == 0)
 {
  SiWriteHubDb(CfgCreateFolder(f, "SecurityAccountDatabase"), h->HubDb,
   0
   );
 }


 CfgAddInt64(f, "LastCommTime", h->LastCommTime);
 CfgAddInt64(f, "LastLoginTime", h->LastLoginTime);
 CfgAddInt64(f, "CreatedTime", h->CreatedTime);
 CfgAddInt(f, "NumLogin", h->NumLogin);
}
