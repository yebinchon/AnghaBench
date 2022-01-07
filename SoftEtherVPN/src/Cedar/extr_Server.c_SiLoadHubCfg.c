
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_18__ ;


typedef int wchar_t ;
typedef int secret_str ;
typedef int o ;
typedef int name ;
typedef int g ;
typedef scalar_t__ UINT ;
struct TYPE_26__ {int Size; int Buf; } ;
struct TYPE_25__ {char* RadiusSuffixFilter; char* RadiusRealm; scalar_t__ Type; int CurrentVersion; int LastVersion; scalar_t__ LastCommTime; scalar_t__ LastLoginTime; int Offline; int PacketLogger; int SecurityLogger; void* NumLogin; void* CreatedTime; TYPE_1__* Cedar; int SecureNATOption; int Traffic; int SecurePassword; int HashedPassword; int RadiusOptionLock; void* RadiusUsePeapInsteadOfEap; void* RadiusConvertAllMsChapv2AuthRequestToEap; } ;
struct TYPE_24__ {scalar_t__ ServerType; int * Cedar; } ;
struct TYPE_23__ {int Bridge; TYPE_18__* Server; } ;
struct TYPE_22__ {scalar_t__ ServerType; } ;
typedef TYPE_2__ SERVER ;
typedef char HUB_OPTION ;
typedef char HUB_LOG ;
typedef TYPE_3__ HUB ;
typedef int FOLDER ;
typedef int CEDAR ;
typedef TYPE_4__ BUF ;


 int ADMINISTRATOR_USERNAME ;
 int AddHub (int *,TYPE_3__*) ;
 void* CfgGetBool (int *,char*) ;
 TYPE_4__* CfgGetBuf (int *,char*) ;
 int CfgGetByte (int *,char*,int ,int) ;
 int * CfgGetFolder (int *,char*) ;
 void* CfgGetInt (int *,char*) ;
 void* CfgGetInt64 (int *,char*) ;
 scalar_t__ CfgGetStr (int *,char*,char*,int) ;
 scalar_t__ CfgGetUniStr (int *,char*,int *,int) ;
 int Copy (char*,int ,int) ;
 int Free (int *) ;
 int FreeBuf (TYPE_4__*) ;
 scalar_t__ GetServerCapsBool (TYPE_18__*,char*) ;
 int HUB_MAXMSG_LEN ;
 scalar_t__ HUB_TYPE_FARM_DYNAMIC ;
 scalar_t__ HUB_TYPE_STANDALONE ;
 int HashPassword (int ,int ,char*) ;
 int Lock (int ) ;
 int MAX_SIZE ;
 int * Malloc (int) ;
 TYPE_3__* NewHub (int *,char*,char*) ;
 int NiClearUnsupportedVhOptionForDynamicHub (int ,int) ;
 scalar_t__ RADIUS_RETRY_INTERVAL ;
 int ReleaseHub (TYPE_3__*) ;
 scalar_t__ SERVER_TYPE_FARM_CONTROLLER ;
 scalar_t__ SERVER_TYPE_STANDALONE ;
 int SetHubLogSetting (TYPE_3__*,char*) ;
 int SetHubMsg (TYPE_3__*,int *) ;
 int SetHubOffline (TYPE_3__*) ;
 int SetHubOnline (TYPE_3__*) ;
 int SetRadiusServerEx (TYPE_3__*,char*,scalar_t__,char*,scalar_t__) ;
 int Sha0 (int ,char*,int ) ;
 int SiLoadHubAccessLists (TYPE_3__*,int *) ;
 int SiLoadHubAdminOptions (TYPE_3__*,int *) ;
 int SiLoadHubDb (TYPE_3__*,int *) ;
 int SiLoadHubLinks (TYPE_3__*,int *) ;
 int SiLoadHubLogCfg (char*,int *) ;
 int SiLoadHubOptionCfg (int *,char*) ;
 int SiLoadSecureNAT (TYPE_3__*,int *) ;
 int SiLoadTraffic (int *,char*,int ) ;
 void* SystemTime64 () ;
 int Unlock (int ) ;
 int WaitLogFlush (int ) ;
 int Zero (char*,int) ;

void SiLoadHubCfg(SERVER *s, FOLDER *f, char *name)
{
 HUB *h;
 CEDAR *c;
 HUB_OPTION o;
 bool online;
 UINT hub_old_type = 0;

 if (s == ((void*)0) || f == ((void*)0) || name == ((void*)0))
 {
  return;
 }

 c = s->Cedar;


 Zero(&o, sizeof(o));
 SiLoadHubOptionCfg(CfgGetFolder(f, "Option"), &o);


 h = NewHub(c, name, &o);
 if (h != ((void*)0))
 {
  HUB_LOG g;

  Lock(h->RadiusOptionLock);
  {
   char name[MAX_SIZE];
   BUF *secret;
   UINT port;
   UINT interval;

   port = CfgGetInt(f, "RadiusServerPort");
   interval = CfgGetInt(f, "RadiusRetryInterval");

   CfgGetStr(f, "RadiusSuffixFilter", h->RadiusSuffixFilter, sizeof(h->RadiusSuffixFilter));
   CfgGetStr(f, "RadiusRealm", h->RadiusRealm, sizeof(h->RadiusRealm));

   h->RadiusConvertAllMsChapv2AuthRequestToEap = CfgGetBool(f, "RadiusConvertAllMsChapv2AuthRequestToEap");
   h->RadiusUsePeapInsteadOfEap = CfgGetBool(f, "RadiusUsePeapInsteadOfEap");

   if (interval == 0)
   {
    interval = RADIUS_RETRY_INTERVAL;
   }

   if (port != 0 && CfgGetStr(f, "RadiusServerName", name, sizeof(name)))
   {
    secret = CfgGetBuf(f, "RadiusSecret");
    if (secret != ((void*)0))
    {
     char secret_str[MAX_SIZE];
     Zero(secret_str, sizeof(secret_str));
     if (secret->Size < sizeof(secret_str))
     {
      Copy(secret_str, secret->Buf, secret->Size);
     }
     secret_str[sizeof(secret_str) - 1] = 0;

     SetRadiusServerEx(h, name, port, secret_str, interval);
     FreeBuf(secret);
    }
   }
  }
  Unlock(h->RadiusOptionLock);


  if (CfgGetByte(f, "HashedPassword", h->HashedPassword, sizeof(h->HashedPassword)) != sizeof(h->HashedPassword))
  {
   Sha0(h->HashedPassword, "", 0);
  }
  if (CfgGetByte(f, "SecurePassword", h->SecurePassword, sizeof(h->SecurePassword)) != sizeof(h->SecurePassword))
  {
   HashPassword(h->SecurePassword, ADMINISTRATOR_USERNAME, "");
  }


  Zero(&g, sizeof(g));
  SiLoadHubLogCfg(&g, CfgGetFolder(f, "LogSetting"));
  SetHubLogSetting(h, &g);


  if (h->Cedar->Bridge == 0)
  {
   online = CfgGetBool(f, "Online");
  }
  else
  {
   online = 1;
  }


  SiLoadTraffic(f, "Traffic", h->Traffic);


  SiLoadHubAccessLists(h, CfgGetFolder(f, "AccessList"));


  hub_old_type = h->Type = CfgGetInt(f, "Type");

  if (s->ServerType == SERVER_TYPE_STANDALONE)
  {
   if (h->Type != HUB_TYPE_STANDALONE)
   {

    h->Type = HUB_TYPE_STANDALONE;
   }
  }
  else
  {
   if (h->Type == HUB_TYPE_STANDALONE)
   {

    h->Type = HUB_TYPE_FARM_DYNAMIC;
   }
  }

  if (h->Type == HUB_TYPE_FARM_DYNAMIC)
  {
   h->CurrentVersion = h->LastVersion = 1;
  }


  {
   FOLDER *folder = CfgGetFolder(f, "Message");
   if (folder != ((void*)0))
   {
    wchar_t *tmp = Malloc(sizeof(wchar_t) * (HUB_MAXMSG_LEN + 1));
    if (CfgGetUniStr(folder, "MessageText", tmp, sizeof(wchar_t) * (HUB_MAXMSG_LEN + 1)))
    {
     SetHubMsg(h, tmp);
    }
    Free(tmp);
   }
  }


  if (h->Type == HUB_TYPE_STANDALONE)
  {


   {
    SiLoadHubLinks(h, CfgGetFolder(f, "CascadeList"));
   }
  }


  if (GetServerCapsBool(h->Cedar->Server, "b_support_securenat"))
  {
   if (h->Type == HUB_TYPE_STANDALONE || h->Type == HUB_TYPE_FARM_DYNAMIC)
   {

    SiLoadSecureNAT(h, CfgGetFolder(f, "SecureNAT"));

    if (h->Type != HUB_TYPE_STANDALONE && h->Cedar != ((void*)0) && h->Cedar->Server != ((void*)0) &&
     h->Cedar->Server->ServerType == SERVER_TYPE_FARM_CONTROLLER)
    {
     NiClearUnsupportedVhOptionForDynamicHub(h->SecureNATOption,
      hub_old_type == HUB_TYPE_STANDALONE);
    }

   }
  }


  SiLoadHubAdminOptions(h, CfgGetFolder(f, "AdminOption"));


  if (h->Cedar->Bridge == 0)
  {
   SiLoadHubDb(h, CfgGetFolder(f, "SecurityAccountDatabase"));
  }


  h->LastCommTime = CfgGetInt64(f, "LastCommTime");
  if (h->LastCommTime == 0)
  {
   h->LastCommTime = SystemTime64();
  }
  h->LastLoginTime = CfgGetInt64(f, "LastLoginTime");
  if (h->LastLoginTime == 0)
  {
   h->LastLoginTime = SystemTime64();
  }
  h->CreatedTime = CfgGetInt64(f, "CreatedTime");
  h->NumLogin = CfgGetInt(f, "NumLogin");


  AddHub(c, h);

  if (online)
  {
   h->Offline = 1;
   SetHubOnline(h);
  }
  else
  {
   h->Offline = 0;
   SetHubOffline(h);
  }

  WaitLogFlush(h->SecurityLogger);
  WaitLogFlush(h->PacketLogger);

  ReleaseHub(h);
 }
}
