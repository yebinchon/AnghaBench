
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_22__ {int ServerAdmin; TYPE_2__* Server; } ;
struct TYPE_21__ {int LinkList; } ;
struct TYPE_20__ {TYPE_1__* Option; int lock; int ref; } ;
struct TYPE_19__ {int NewAccountName; int OldAccountName; int HubName; } ;
struct TYPE_18__ {scalar_t__ ServerType; int * Cedar; } ;
struct TYPE_17__ {int AccountName; } ;
typedef TYPE_2__ SERVER ;
typedef TYPE_3__ RPC_RENAME_LINK ;
typedef TYPE_4__ LINK ;
typedef TYPE_5__ HUB ;
typedef int CEDAR ;
typedef TYPE_6__ ADMIN ;


 int ALog (TYPE_6__*,TYPE_5__*,char*,int ,int ) ;
 int AddRef (int ) ;
 int CHECK_RIGHT ;
 scalar_t__ ERR_HUB_NOT_FOUND ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_LINK_ALREADY_EXISTS ;
 scalar_t__ ERR_NOT_ENOUGH_RIGHT ;
 scalar_t__ ERR_NOT_SUPPORTED ;
 scalar_t__ ERR_NO_ERROR ;
 scalar_t__ ERR_OBJECT_NOT_FOUND ;
 TYPE_5__* GetHub (int *,int ) ;
 scalar_t__ GetHubAdminOption (TYPE_5__*,char*) ;
 int IncrementServerConfigRevision (TYPE_2__*) ;
 TYPE_4__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int Lock (int ) ;
 int LockList (int ) ;
 int ReleaseHub (TYPE_5__*) ;
 int ReleaseLink (TYPE_4__*) ;
 scalar_t__ SERVER_TYPE_STANDALONE ;
 scalar_t__ UniIsEmptyStr (int ) ;
 scalar_t__ UniStrCmpi (int ,int ) ;
 int UniStrCpy (int ,int,int ) ;
 int Unlock (int ) ;
 int UnlockList (int ) ;

UINT StRenameLink(ADMIN *a, RPC_RENAME_LINK *t)
{
 UINT i;
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 HUB *h;
 UINT ret = ERR_NO_ERROR;
 LINK *k;
 bool exists = 0;

 if (UniIsEmptyStr(t->OldAccountName) || UniIsEmptyStr(t->NewAccountName))
 {
  return ERR_INVALID_PARAMETER;
 }

 if (s->ServerType != SERVER_TYPE_STANDALONE)
 {
  return ERR_NOT_SUPPORTED;
 }

 CHECK_RIGHT;

 if (UniStrCmpi(t->NewAccountName, t->OldAccountName) == 0)
 {

  return ERR_NO_ERROR;
 }

 h = GetHub(c, t->HubName);

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
    if (UniStrCmpi(kk->Option->AccountName, t->OldAccountName) == 0)
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

  exists = 0;

  if (k != ((void*)0))
  {

   for (i = 0;i < LIST_NUM(h->LinkList);i++)
   {
    LINK *kk = LIST_DATA(h->LinkList, i);
    Lock(kk->lock);
    {
     if (UniStrCmpi(kk->Option->AccountName, t->NewAccountName) == 0)
     {

      exists = 1;
     }
    }
    Unlock(kk->lock);
   }

   if (exists)
   {

    ret = ERR_LINK_ALREADY_EXISTS;
   }
   else
   {

    UniStrCpy(k->Option->AccountName, sizeof(k->Option->AccountName), t->NewAccountName);

    ALog(a, h, "LA_RENAME_LINK", t->OldAccountName, t->NewAccountName);

    IncrementServerConfigRevision(s);
   }
  }
 }
 UnlockList(h->LinkList);

 if (k == ((void*)0))
 {

  ReleaseHub(h);
  return ERR_OBJECT_NOT_FOUND;
 }

 ReleaseLink(k);

 ReleaseHub(h);

 return ret;
}
