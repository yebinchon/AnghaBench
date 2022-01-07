
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int hubname ;
typedef size_t UINT ;
struct TYPE_18__ {int UniqueId; } ;
struct TYPE_17__ {TYPE_1__* Server; } ;
struct TYPE_16__ {int AccessList; } ;
struct TYPE_15__ {char* HubName; size_t NumAccess; TYPE_5__* Accesses; } ;
struct TYPE_14__ {scalar_t__ ServerType; int * Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ RPC_ENUM_ACCESS_LIST ;
typedef TYPE_3__ HUB ;
typedef int CEDAR ;
typedef TYPE_4__ ADMIN ;
typedef TYPE_5__ ACCESS ;


 int CHECK_RIGHT ;
 int Copy (TYPE_5__*,int ,int) ;
 size_t ERR_HUB_NOT_FOUND ;
 size_t ERR_NOT_SUPPORTED ;
 size_t ERR_NO_ERROR ;
 int FreeRpcEnumAccessList (TYPE_2__*) ;
 TYPE_3__* GetHub (int *,char*) ;
 int HashPtrToUINT (int ) ;
 int LIST_DATA (int ,size_t) ;
 size_t LIST_NUM (int ) ;
 int LockHubList (int *) ;
 int LockList (int ) ;
 int MAX_HUBNAME_LEN ;
 int NO_SUPPORT_FOR_BRIDGE ;
 int ReleaseHub (TYPE_3__*) ;
 scalar_t__ SERVER_TYPE_FARM_MEMBER ;
 int StrCpy (char*,int,char*) ;
 int UnlockHubList (int *) ;
 int UnlockList (int ) ;
 int Zero (TYPE_2__*,int) ;
 TYPE_5__* ZeroMalloc (int) ;

UINT StEnumAccess(ADMIN *a, RPC_ENUM_ACCESS_LIST *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 HUB *h;
 UINT i;
 char hubname[MAX_HUBNAME_LEN + 1];

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

 StrCpy(hubname, sizeof(hubname), t->HubName);
 FreeRpcEnumAccessList(t);
 Zero(t, sizeof(RPC_ENUM_ACCESS_LIST));
 StrCpy(t->HubName, sizeof(t->HubName), hubname);

 LockList(h->AccessList);
 {
  t->NumAccess = LIST_NUM(h->AccessList);
  t->Accesses = ZeroMalloc(sizeof(ACCESS) * t->NumAccess);

  for (i = 0;i < LIST_NUM(h->AccessList);i++)
  {
   ACCESS *a = &t->Accesses[i];
   Copy(a, LIST_DATA(h->AccessList, i), sizeof(ACCESS));
   a->UniqueId = HashPtrToUINT(LIST_DATA(h->AccessList, i));
  }
 }
 UnlockList(h->AccessList);

 ReleaseHub(h);

 return ERR_NO_ERROR;
}
