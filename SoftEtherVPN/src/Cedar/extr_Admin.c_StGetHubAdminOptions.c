
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_18__ {TYPE_1__* Server; } ;
struct TYPE_17__ {int Name; int Descrption; int Value; } ;
struct TYPE_16__ {int AdminOptionList; int Name; } ;
struct TYPE_15__ {int NumItem; TYPE_4__* Items; int HubName; } ;
struct TYPE_14__ {scalar_t__ ServerType; int * Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ RPC_ADMIN_OPTION ;
typedef TYPE_3__ HUB ;
typedef int CEDAR ;
typedef TYPE_4__ ADMIN_OPTION ;
typedef TYPE_5__ ADMIN ;


 int CHECK_RIGHT ;
 size_t ERR_HUB_NOT_FOUND ;
 size_t ERR_NOT_SUPPORTED ;
 size_t ERR_NO_ERROR ;
 int FreeRpcAdminOption (TYPE_2__*) ;
 TYPE_3__* GetHub (int *,int ) ;
 int GetHubAdminOptionHelpString (int ) ;
 TYPE_4__* LIST_DATA (int ,size_t) ;
 int LIST_NUM (int ) ;
 int LockHubList (int *) ;
 int LockList (int ) ;
 int NO_SUPPORT_FOR_BRIDGE ;
 int ReleaseHub (TYPE_3__*) ;
 scalar_t__ SERVER_TYPE_FARM_MEMBER ;
 int StrCpy (int ,int,int ) ;
 int UniStrCpy (int ,int,int ) ;
 int UnlockHubList (int *) ;
 int UnlockList (int ) ;
 int Zero (TYPE_2__*,int) ;
 TYPE_4__* ZeroMalloc (int) ;

UINT StGetHubAdminOptions(ADMIN *a, RPC_ADMIN_OPTION *t)
{
 UINT i;
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 HUB *h;

 CHECK_RIGHT;

 NO_SUPPORT_FOR_BRIDGE;
 if (s->ServerType == SERVER_TYPE_FARM_MEMBER)
 {
  return ERR_NOT_SUPPORTED;
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

 FreeRpcAdminOption(t);
 Zero(t, sizeof(RPC_ADMIN_OPTION));

 StrCpy(t->HubName, sizeof(t->HubName), h->Name);

 LockList(h->AdminOptionList);
 {
  t->NumItem = LIST_NUM(h->AdminOptionList);
  t->Items = ZeroMalloc(sizeof(ADMIN_OPTION) * t->NumItem);

  for (i = 0;i < t->NumItem;i++)
  {
   ADMIN_OPTION *a = LIST_DATA(h->AdminOptionList, i);
   ADMIN_OPTION *e = &t->Items[i];

   StrCpy(e->Name, sizeof(e->Name), a->Name);
   e->Value = a->Value;
   UniStrCpy(e->Descrption, sizeof(e->Descrption), GetHubAdminOptionHelpString(e->Name));
  }
 }
 UnlockList(h->AdminOptionList);

 ReleaseHub(h);

 return ERR_NO_ERROR;
}
