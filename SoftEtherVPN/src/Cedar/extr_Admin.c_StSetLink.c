
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_15__ ;
typedef struct TYPE_18__ TYPE_14__ ;


typedef scalar_t__ UINT ;
struct TYPE_24__ {int ServerAdmin; TYPE_1__* Server; } ;
struct TYPE_23__ {int LinkList; } ;
struct TYPE_22__ {int lock; int * ServerCert; int CheckServerCert; TYPE_14__* Option; TYPE_14__* Policy; int Auth; int ref; } ;
struct TYPE_19__ {int Ver3; int AccountName; } ;
struct TYPE_21__ {int ServerCert; int CheckServerCert; TYPE_15__ Policy; int ClientAuth; TYPE_15__* ClientOption; int HubName; } ;
struct TYPE_20__ {scalar_t__ ServerType; int * Cedar; } ;
struct TYPE_18__ {int RetryInterval; int NoRoutingTracking; int RequireBridgeRoutingMode; int RequireMonitorMode; int NumRetry; int DeviceName; int AccountName; } ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ RPC_CREATE_LINK ;
typedef int POLICY ;
typedef TYPE_3__ LINK ;
typedef TYPE_4__ HUB ;
typedef int CLIENT_OPTION ;
typedef int CEDAR ;
typedef TYPE_5__ ADMIN ;


 int ALog (TYPE_5__*,TYPE_4__*,char*,int ) ;
 int AddRef (int ) ;
 int CHECK_RIGHT ;
 int CiFreeClientAuth (int ) ;
 int * CloneX (int ) ;
 int Copy (TYPE_14__*,TYPE_15__*,int) ;
 int CopyClientAuth (int ) ;
 scalar_t__ ERR_HUB_NOT_FOUND ;
 scalar_t__ ERR_LINK_CANT_CREATE_ON_FARM ;
 scalar_t__ ERR_NOT_ENOUGH_RIGHT ;
 scalar_t__ ERR_NOT_SUPPORTED ;
 scalar_t__ ERR_NO_ERROR ;
 scalar_t__ ERR_OBJECT_NOT_FOUND ;
 int FreeX (int *) ;
 TYPE_4__* GetHub (int *,int ) ;
 scalar_t__ GetHubAdminOption (TYPE_4__*,char*) ;
 int INFINITE ;
 int IncrementServerConfigRevision (TYPE_1__*) ;
 int LINK_DEVICE_NAME ;
 TYPE_3__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int Lock (int ) ;
 int LockHubList (int *) ;
 int LockList (int ) ;
 int NUM_POLICY_ITEM_FOR_VER2 ;
 int ReleaseHub (TYPE_4__*) ;
 int ReleaseLink (TYPE_3__*) ;
 scalar_t__ SERVER_TYPE_STANDALONE ;
 int StrCpy (int ,int,int ) ;
 scalar_t__ UniStrCmpi (int ,int ) ;
 int Unlock (int ) ;
 int UnlockHubList (int *) ;
 int UnlockList (int ) ;

UINT StSetLink(ADMIN *a, RPC_CREATE_LINK *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 HUB *h;
 UINT ret = ERR_NO_ERROR;
 UINT i;
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

 if (a->ServerAdmin == 0 && GetHubAdminOption(h, "no_cascade") != 0)
 {
  ReleaseHub(h);
  return ERR_NOT_ENOUGH_RIGHT;
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

 ALog(a, h, "LA_SET_LINK", t->ClientOption->AccountName);

 Lock(k->lock);
 {

  if (k->ServerCert != ((void*)0))
  {
   FreeX(k->ServerCert);
   k->ServerCert = ((void*)0);
  }

  Copy(k->Option, t->ClientOption, sizeof(CLIENT_OPTION));
  StrCpy(k->Option->DeviceName, sizeof(k->Option->DeviceName), LINK_DEVICE_NAME);
  k->Option->NumRetry = INFINITE;
  k->Option->RetryInterval = 10;
  k->Option->NoRoutingTracking = 1;
  CiFreeClientAuth(k->Auth);
  k->Auth = CopyClientAuth(t->ClientAuth);

  if (t->Policy.Ver3 == 0)
  {
   Copy(k->Policy, &t->Policy, sizeof(UINT) * NUM_POLICY_ITEM_FOR_VER2);
  }
  else
  {
   Copy(k->Policy, &t->Policy, sizeof(POLICY));
  }

  k->Option->RequireBridgeRoutingMode = 1;
  k->Option->RequireMonitorMode = 0;

  k->CheckServerCert = t->CheckServerCert;
  k->ServerCert = CloneX(t->ServerCert);
 }
 Unlock(k->lock);

 IncrementServerConfigRevision(s);

 ReleaseLink(k);
 ReleaseHub(h);

 return ret;
}
