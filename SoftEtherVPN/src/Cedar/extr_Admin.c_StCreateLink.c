
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_14__ ;


typedef scalar_t__ UINT ;
struct TYPE_27__ {int ServerAdmin; TYPE_2__* Server; } ;
struct TYPE_26__ {int LinkList; } ;
struct TYPE_25__ {int Offline; int ServerCert; int CheckServerCert; int lock; int ref; TYPE_1__* Option; } ;
struct TYPE_24__ {int ServerCert; int CheckServerCert; int Policy; int ClientAuth; TYPE_14__* ClientOption; int HubName; } ;
struct TYPE_23__ {scalar_t__ ServerType; int * Cedar; } ;
struct TYPE_22__ {int AccountName; } ;
struct TYPE_21__ {int AccountName; } ;
typedef TYPE_2__ SERVER ;
typedef TYPE_3__ RPC_CREATE_LINK ;
typedef TYPE_4__ LINK ;
typedef TYPE_5__ HUB ;
typedef int CEDAR ;
typedef TYPE_6__ ADMIN ;


 int ALog (TYPE_6__*,TYPE_5__*,char*,int ) ;
 int AddRef (int ) ;
 int CHECK_RIGHT ;
 int CloneX (int ) ;
 scalar_t__ ERR_HUB_NOT_FOUND ;
 scalar_t__ ERR_INTERNAL_ERROR ;
 scalar_t__ ERR_LINK_ALREADY_EXISTS ;
 scalar_t__ ERR_LINK_CANT_CREATE_ON_FARM ;
 scalar_t__ ERR_NOT_ENOUGH_RIGHT ;
 scalar_t__ ERR_NO_ERROR ;
 TYPE_5__* GetHub (int *,int ) ;
 scalar_t__ GetHubAdminOption (TYPE_5__*,char*) ;
 int IncrementServerConfigRevision (TYPE_2__*) ;
 TYPE_4__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int Lock (int ) ;
 int LockHubList (int *) ;
 int LockList (int ) ;
 TYPE_4__* NewLink (int *,TYPE_5__*,TYPE_14__*,int ,int *) ;
 int ReleaseHub (TYPE_5__*) ;
 int ReleaseLink (TYPE_4__*) ;
 scalar_t__ SERVER_TYPE_STANDALONE ;
 int SetLinkOffline (TYPE_4__*) ;
 scalar_t__ UniStrCmpi (int ,int ) ;
 int Unlock (int ) ;
 int UnlockHubList (int *) ;
 int UnlockList (int ) ;

UINT StCreateLink(ADMIN *a, RPC_CREATE_LINK *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 HUB *h;
 UINT ret = ERR_NO_ERROR;
 UINT i;
 LINK *k;

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

 if (k != ((void*)0))
 {

  ReleaseLink(k);
  ReleaseHub(h);
  return ERR_LINK_ALREADY_EXISTS;
 }

 ALog(a, h, "LA_CREATE_LINK", t->ClientOption->AccountName);


 k = NewLink(c, h, t->ClientOption, t->ClientAuth, &t->Policy);

 if (k == ((void*)0))
 {

  ret = ERR_INTERNAL_ERROR;
 }
 else
 {


  k->CheckServerCert = t->CheckServerCert;
  k->ServerCert = CloneX(t->ServerCert);


  k->Offline = 0;
  SetLinkOffline(k);
  ReleaseLink(k);

  IncrementServerConfigRevision(s);
 }

 ReleaseHub(h);

 return ret;
}
