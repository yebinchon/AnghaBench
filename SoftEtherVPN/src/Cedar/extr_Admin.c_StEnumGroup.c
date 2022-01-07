
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_9__ ;
typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int hubname ;
struct TYPE_21__ {char* Name; int lock; TYPE_1__* Policy; int Note; int RealName; } ;
typedef TYPE_3__ USERGROUP ;
struct TYPE_22__ {int lock; TYPE_3__* Group; } ;
typedef TYPE_4__ USER ;
typedef size_t UINT ;
struct TYPE_27__ {TYPE_5__* Server; } ;
struct TYPE_26__ {TYPE_2__* HubDb; } ;
struct TYPE_25__ {char* HubName; size_t NumGroup; TYPE_6__* Groups; } ;
struct TYPE_24__ {char* Name; int DenyAccess; scalar_t__ NumUsers; int Note; int Realname; } ;
struct TYPE_23__ {scalar_t__ ServerType; int * Cedar; } ;
struct TYPE_20__ {int UserList; int GroupList; } ;
struct TYPE_19__ {int Access; } ;
typedef TYPE_5__ SERVER ;
typedef TYPE_6__ RPC_ENUM_GROUP_ITEM ;
typedef TYPE_7__ RPC_ENUM_GROUP ;
typedef TYPE_8__ HUB ;
typedef int CEDAR ;
typedef TYPE_9__ ADMIN ;


 int AcLock (TYPE_8__*) ;
 int AcUnlock (TYPE_8__*) ;
 int CHECK_RIGHT ;
 size_t ERR_HUB_NOT_FOUND ;
 size_t ERR_NOT_SUPPORTED ;
 size_t ERR_NO_ERROR ;
 int FreeRpcEnumGroup (TYPE_7__*) ;
 TYPE_8__* GetHub (int *,char*) ;
 void* LIST_DATA (int ,size_t) ;
 size_t LIST_NUM (int ) ;
 int Lock (int ) ;
 int LockHubList (int *) ;
 int LockList (int ) ;
 int MAX_HUBNAME_LEN ;
 int NO_SUPPORT_FOR_BRIDGE ;
 int ReleaseHub (TYPE_8__*) ;
 scalar_t__ SERVER_TYPE_FARM_MEMBER ;
 int StrCpy (char*,int,char*) ;
 int UniStrCpy (int ,int,int ) ;
 int Unlock (int ) ;
 int UnlockHubList (int *) ;
 int UnlockList (int ) ;
 int Zero (TYPE_7__*,int) ;
 TYPE_6__* ZeroMalloc (int) ;

UINT StEnumGroup(ADMIN *a, RPC_ENUM_GROUP *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 HUB *h = ((void*)0);
 UINT ret = ERR_NO_ERROR;
 char hubname[MAX_HUBNAME_LEN + 1];

 StrCpy(hubname, sizeof(hubname), t->HubName);

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

 AcLock(h);
 {
  UINT i, j;

  FreeRpcEnumGroup(t);
  Zero(t, sizeof(RPC_ENUM_GROUP));
  StrCpy(t->HubName, sizeof(t->HubName), hubname);

  t->NumGroup = LIST_NUM(h->HubDb->GroupList);
  t->Groups = ZeroMalloc(sizeof(RPC_ENUM_GROUP_ITEM) * t->NumGroup);

  for (i = 0;i < t->NumGroup;i++)
  {
   RPC_ENUM_GROUP_ITEM *e = &t->Groups[i];
   USERGROUP *g = LIST_DATA(h->HubDb->GroupList, i);

   Lock(g->lock);
   {
    StrCpy(e->Name, sizeof(e->Name), g->Name);
    UniStrCpy(e->Realname, sizeof(e->Realname), g->RealName);
    UniStrCpy(e->Note, sizeof(e->Note), g->Note);
    if (g->Policy != ((void*)0))
    {
     if (g->Policy->Access == 0)
     {
      e->DenyAccess = 1;
     }
    }
   }
   Unlock(g->lock);

   e->NumUsers = 0;


   LockList(h->HubDb->UserList);
   {
    for (j = 0;j < LIST_NUM(h->HubDb->UserList);j++)
    {
     USER *u = LIST_DATA(h->HubDb->UserList, j);

     Lock(u->lock);
     {
      if (u->Group == g)
      {
       e->NumUsers++;
      }
     }
     Unlock(u->lock);
    }
   }
   UnlockList(h->HubDb->UserList);
  }
 }
 AcUnlock(h);

 ReleaseHub(h);

 return ERR_NO_ERROR;
}
