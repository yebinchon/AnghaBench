
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_22__ {int ServerAdmin; TYPE_1__* Server; } ;
struct TYPE_21__ {int Value; int Name; } ;
struct TYPE_20__ {int CurrentVersion; int Name; int AdminOptionList; } ;
struct TYPE_19__ {scalar_t__ NumItem; TYPE_4__* Items; int HubName; } ;
struct TYPE_18__ {scalar_t__ ServerType; int * Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ RPC_ADMIN_OPTION ;
typedef TYPE_3__ HUB ;
typedef int CEDAR ;
typedef TYPE_4__ ADMIN_OPTION ;
typedef TYPE_5__ ADMIN ;


 int ALog (TYPE_5__*,int *,char*,int ) ;
 int AddHubAdminOptionsDefaults (TYPE_3__*,int) ;
 int CHECK_RIGHT ;
 int DeleteAllHubAdminOption (TYPE_3__*,int) ;
 size_t ERR_HUB_NOT_FOUND ;
 size_t ERR_NOT_ENOUGH_RIGHT ;
 size_t ERR_NOT_SUPPORTED ;
 size_t ERR_NO_ERROR ;
 size_t ERR_TOO_MANT_ITEMS ;
 TYPE_3__* GetHub (int *,int ) ;
 int GetHubAdminOption (TYPE_3__*,char*) ;
 int IncrementServerConfigRevision (TYPE_1__*) ;
 int Insert (int ,TYPE_4__*) ;
 int LockHubList (int *) ;
 int LockList (int ) ;
 scalar_t__ MAX_HUB_ADMIN_OPTIONS ;
 int NO_SUPPORT_FOR_BRIDGE ;
 int ReleaseHub (TYPE_3__*) ;
 scalar_t__ SERVER_TYPE_FARM_MEMBER ;
 int SiHubUpdateProc (TYPE_3__*) ;
 int StrCpy (int ,int,int ) ;
 int UnlockHubList (int *) ;
 int UnlockList (int ) ;
 TYPE_4__* ZeroMalloc (int) ;

UINT StSetHubAdminOptions(ADMIN *a, RPC_ADMIN_OPTION *t)
{
 UINT i;
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 HUB *h;

 bool not_server_admin = 0;


 if (t->NumItem > MAX_HUB_ADMIN_OPTIONS)
 {
  return ERR_TOO_MANT_ITEMS;
 }

 NO_SUPPORT_FOR_BRIDGE;
 if (s->ServerType == SERVER_TYPE_FARM_MEMBER)
 {
  return ERR_NOT_SUPPORTED;
 }

 CHECK_RIGHT;

 if (a->ServerAdmin == 0)
 {
  not_server_admin = 1;
 }

 LockHubList(c);
 {
  h = GetHub(c, t->HubName);
 }
 UnlockHubList(c);

 if (h == ((void*)0))
 {
  return ERR_HUB_NOT_FOUND;
 }

 if (GetHubAdminOption(h, "allow_hub_admin_change_option") == 0
  && not_server_admin)
 {

  ReleaseHub(h);

  return ERR_NOT_ENOUGH_RIGHT;
 }

 LockList(h->AdminOptionList);
 {
  DeleteAllHubAdminOption(h, 0);

  for (i = 0;i < t->NumItem;i++)
  {
   ADMIN_OPTION *e = &t->Items[i];
   ADMIN_OPTION *a = ZeroMalloc(sizeof(ADMIN_OPTION));

   StrCpy(a->Name, sizeof(a->Name), e->Name);
   a->Value = e->Value;

   Insert(h->AdminOptionList, a);
  }

  AddHubAdminOptionsDefaults(h, 0);
 }
 UnlockList(h->AdminOptionList);

 ALog(a, ((void*)0), "LA_SET_HUB_ADMIN_OPTION", h->Name);

 h->CurrentVersion++;
 SiHubUpdateProc(h);

 ReleaseHub(h);

 IncrementServerConfigRevision(s);

 return ERR_NO_ERROR;
}
