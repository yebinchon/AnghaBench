
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int wchar_t ;
typedef int hubname ;
typedef int accountname ;
typedef scalar_t__ UINT ;
struct TYPE_25__ {int ServerAdmin; TYPE_2__* Server; } ;
struct TYPE_24__ {int LinkList; } ;
struct TYPE_23__ {int NoOnline; int lock; int ref; TYPE_1__* Option; } ;
struct TYPE_22__ {int AccountName; int HubName; } ;
struct TYPE_21__ {scalar_t__ ServerType; int * Cedar; } ;
struct TYPE_20__ {int AccountName; } ;
typedef TYPE_2__ SERVER ;
typedef TYPE_3__ RPC_LINK ;
typedef TYPE_4__ LINK ;
typedef TYPE_5__ HUB ;
typedef int CEDAR ;
typedef TYPE_6__ ADMIN ;


 int ALog (TYPE_6__*,TYPE_5__*,char*,int ) ;
 int AddRef (int ) ;
 int CHECK_RIGHT ;
 int DelLink (TYPE_5__*,TYPE_4__*) ;
 scalar_t__ ERR_HUB_NOT_FOUND ;
 scalar_t__ ERR_INVALID_PARAMETER ;
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
 int LockHubList (int *) ;
 int LockList (int ) ;
 int MAX_ACCOUNT_NAME_LEN ;
 int MAX_HUBNAME_LEN ;
 int ReleaseHub (TYPE_5__*) ;
 int ReleaseLink (TYPE_4__*) ;
 scalar_t__ SERVER_TYPE_STANDALONE ;
 int SetLinkOffline (TYPE_4__*) ;
 int StrCpy (char*,int,int ) ;
 scalar_t__ UniIsEmptyStr (int ) ;
 scalar_t__ UniStrCmpi (int ,int *) ;
 int UniStrCpy (int *,int,int ) ;
 int Unlock (int ) ;
 int UnlockHubList (int *) ;
 int UnlockList (int ) ;

UINT StDeleteLink(ADMIN *a, RPC_LINK *t)
{
 UINT i;
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 HUB *h;
 UINT ret = ERR_NO_ERROR;
 char hubname[MAX_HUBNAME_LEN + 1];
 wchar_t accountname[MAX_ACCOUNT_NAME_LEN + 1];
 LINK *k;

 if (UniIsEmptyStr(t->AccountName))
 {
  return ERR_INVALID_PARAMETER;
 }

 if (s->ServerType != SERVER_TYPE_STANDALONE)
 {
  return ERR_NOT_SUPPORTED;
 }

 CHECK_RIGHT;

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

 StrCpy(hubname, sizeof(hubname), t->HubName);
 UniStrCpy(accountname, sizeof(accountname), t->AccountName);
 k = ((void*)0);


 LockList(h->LinkList);
 {
  for (i = 0;i < LIST_NUM(h->LinkList);i++)
  {
   LINK *kk = LIST_DATA(h->LinkList, i);
   Lock(kk->lock);
   {
    if (UniStrCmpi(kk->Option->AccountName, accountname) == 0)
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

 k->NoOnline = 1;

 ALog(a, h, "LA_DELETE_LINK", t->AccountName);

 SetLinkOffline(k);

 IncrementServerConfigRevision(s);

 DelLink(h, k);

 ReleaseLink(k);
 ReleaseHub(h);

 return ret;
}
