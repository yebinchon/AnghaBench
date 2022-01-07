
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_16__ ;


typedef int hubname ;
typedef scalar_t__ UINT ;
struct TYPE_23__ {int AccountName; } ;
struct TYPE_22__ {TYPE_1__* Server; } ;
struct TYPE_21__ {int LinkList; } ;
struct TYPE_20__ {int lock; int ServerCert; int CheckServerCert; TYPE_16__* Policy; int Auth; TYPE_16__* Option; scalar_t__ Offline; int ref; } ;
struct TYPE_19__ {char* HubName; int Online; int ServerCert; int CheckServerCert; TYPE_6__ Policy; int ClientAuth; TYPE_6__* ClientOption; } ;
struct TYPE_18__ {scalar_t__ ServerType; int * Cedar; } ;
struct TYPE_17__ {int AccountName; } ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ RPC_CREATE_LINK ;
typedef int POLICY ;
typedef TYPE_3__ LINK ;
typedef TYPE_4__ HUB ;
typedef int CLIENT_OPTION ;
typedef int CEDAR ;
typedef TYPE_5__ ADMIN ;


 int AddRef (int ) ;
 int CHECK_RIGHT ;
 int CloneX (int ) ;
 int Copy (TYPE_6__*,TYPE_16__*,int) ;
 int CopyClientAuth (int ) ;
 scalar_t__ ERR_HUB_NOT_FOUND ;
 scalar_t__ ERR_LINK_CANT_CREATE_ON_FARM ;
 scalar_t__ ERR_NOT_SUPPORTED ;
 scalar_t__ ERR_NO_ERROR ;
 scalar_t__ ERR_OBJECT_NOT_FOUND ;
 int FreeRpcCreateLink (TYPE_2__*) ;
 TYPE_4__* GetHub (int *,char*) ;
 TYPE_3__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int Lock (int ) ;
 int LockHubList (int *) ;
 int LockList (int ) ;
 int MAX_SIZE ;
 int ReleaseHub (TYPE_4__*) ;
 int ReleaseLink (TYPE_3__*) ;
 scalar_t__ SERVER_TYPE_STANDALONE ;
 int StrCpy (char*,int,char*) ;
 scalar_t__ UniStrCmpi (int ,int ) ;
 int Unlock (int ) ;
 int UnlockHubList (int *) ;
 int UnlockList (int ) ;
 int Zero (TYPE_2__*,int) ;
 TYPE_6__* ZeroMalloc (int) ;

UINT StGetLink(ADMIN *a, RPC_CREATE_LINK *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 HUB *h;
 UINT ret = ERR_NO_ERROR;
 UINT i;
 char hubname[MAX_SIZE];
 LINK *k;

 if (s->ServerType != SERVER_TYPE_STANDALONE)
 {
  return ERR_NOT_SUPPORTED;
 }

 CHECK_RIGHT;

 if (s->ServerType != SERVER_TYPE_STANDALONE)
 {
  return ERR_LINK_CANT_CREATE_ON_FARM;
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

 k = ((void*)0);


 LockList(h->LinkList);
 {
  for (i = 0;i < LIST_NUM(h->LinkList);i++)
  {
   LINK *kk = LIST_DATA(h->LinkList, i);
   Lock(kk->lock);
   {
    if (UniStrCmpi(kk->Option->AccountName, t->ClientOption->AccountName) == 0)
    {
     k = kk;
     AddRef(kk->ref);
    }
   }
   Unlock(kk->lock);

   if (k != ((void*)0))
   {
    break;
   }
  }
 }
 UnlockList(h->LinkList);

 if (k == ((void*)0))
 {

  ReleaseHub(h);
  return ERR_OBJECT_NOT_FOUND;
 }

 StrCpy(hubname, sizeof(hubname), t->HubName);
 FreeRpcCreateLink(t);
 Zero(t, sizeof(RPC_CREATE_LINK));
 StrCpy(t->HubName, sizeof(t->HubName), hubname);

 Lock(k->lock);
 {

  t->Online = k->Offline ? 0 : 1;
  t->ClientOption = ZeroMalloc(sizeof(CLIENT_OPTION));
  Copy(t->ClientOption, k->Option, sizeof(CLIENT_OPTION));
  t->ClientAuth = CopyClientAuth(k->Auth);
  Copy(&t->Policy, k->Policy, sizeof(POLICY));

  t->CheckServerCert = k->CheckServerCert;
  t->ServerCert = CloneX(k->ServerCert);
 }
 Unlock(k->lock);

 ReleaseLink(k);
 ReleaseHub(h);

 return ret;
}
