
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int wchar_t ;
typedef int hubname ;
typedef int accountname ;
typedef scalar_t__ UINT ;
struct TYPE_24__ {TYPE_3__* Server; } ;
struct TYPE_23__ {int LinkList; } ;
struct TYPE_22__ {int Offline; int lock; TYPE_2__* ClientSession; int ref; TYPE_1__* Option; } ;
struct TYPE_21__ {char* HubName; int Status; int * AccountName; } ;
struct TYPE_20__ {scalar_t__ ServerType; int * Cedar; } ;
struct TYPE_19__ {int ref; } ;
struct TYPE_18__ {int AccountName; } ;
typedef TYPE_2__ SESSION ;
typedef TYPE_3__ SERVER ;
typedef TYPE_4__ RPC_LINK_STATUS ;
typedef TYPE_5__ LINK ;
typedef TYPE_6__ HUB ;
typedef int CEDAR ;
typedef TYPE_7__ ADMIN ;


 int AddRef (int ) ;
 int CHECK_RIGHT ;
 int CiGetSessionStatus (int *,TYPE_2__*) ;
 scalar_t__ ERR_HUB_NOT_FOUND ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_LINK_IS_OFFLINE ;
 scalar_t__ ERR_NOT_SUPPORTED ;
 scalar_t__ ERR_NO_ERROR ;
 scalar_t__ ERR_OBJECT_NOT_FOUND ;
 int FreeRpcLinkStatus (TYPE_4__*) ;
 TYPE_6__* GetHub (int *,char*) ;
 TYPE_5__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int Lock (int ) ;
 int LockHubList (int *) ;
 int LockList (int ) ;
 int MAX_ACCOUNT_NAME_LEN ;
 int MAX_HUBNAME_LEN ;
 int ReleaseHub (TYPE_6__*) ;
 int ReleaseLink (TYPE_5__*) ;
 int ReleaseSession (TYPE_2__*) ;
 scalar_t__ SERVER_TYPE_STANDALONE ;
 int StrCpy (char*,int,char*) ;
 scalar_t__ UniIsEmptyStr (int *) ;
 scalar_t__ UniStrCmpi (int ,int *) ;
 int UniStrCpy (int *,int,int *) ;
 int Unlock (int ) ;
 int UnlockHubList (int *) ;
 int UnlockList (int ) ;
 int Zero (TYPE_4__*,int) ;

UINT StGetLinkStatus(ADMIN *a, RPC_LINK_STATUS *t)
{
 UINT i;
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 HUB *h;
 UINT ret = ERR_NO_ERROR;
 char hubname[MAX_HUBNAME_LEN + 1];
 wchar_t accountname[MAX_ACCOUNT_NAME_LEN + 1];
 LINK *k;
 SESSION *sess;

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

 StrCpy(hubname, sizeof(hubname), t->HubName);
 UniStrCpy(accountname, sizeof(accountname), t->AccountName);
 FreeRpcLinkStatus(t);
 Zero(t, sizeof(RPC_LINK_STATUS));
 StrCpy(t->HubName, sizeof(t->HubName), hubname);
 UniStrCpy(t->AccountName, sizeof(t->AccountName), accountname);

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


 Lock(k->lock);
 {
  sess = k->ClientSession;
  if (sess != ((void*)0))
  {
   AddRef(sess->ref);
  }
 }
 Unlock(k->lock);

 if (sess != ((void*)0) && k->Offline == 0)
 {
  CiGetSessionStatus(&t->Status, sess);
 }
 else
 {
  ret = ERR_LINK_IS_OFFLINE;
 }
 ReleaseSession(sess);

 ReleaseLink(k);
 ReleaseHub(h);

 return ret;
}
