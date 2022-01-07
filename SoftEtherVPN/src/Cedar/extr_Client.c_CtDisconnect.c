
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_20__ {int AccountName; } ;
struct TYPE_19__ {int lock; TYPE_1__* ClientSession; TYPE_5__* ClientOption; } ;
struct TYPE_18__ {int AccountList; } ;
struct TYPE_17__ {int AccountName; } ;
struct TYPE_16__ {int ref; } ;
typedef TYPE_1__ SESSION ;
typedef TYPE_2__ RPC_CLIENT_CONNECT ;
typedef int CLIENT_OPTION ;
typedef TYPE_3__ CLIENT ;
typedef TYPE_4__ ACCOUNT ;


 int AddRef (int ) ;
 int CLog (TYPE_3__*,char*,int ) ;
 int CiNotify (TYPE_3__*) ;
 int CiSetError (TYPE_3__*,int ) ;
 int ERR_ACCOUNT_INACTIVE ;
 int ERR_ACCOUNT_NOT_FOUND ;
 int Free (TYPE_5__*) ;
 int Lock (int ) ;
 int LockList (int ) ;
 int ReleaseSession (TYPE_1__*) ;
 TYPE_4__* Search (int ,TYPE_4__*) ;
 int StopSession (TYPE_1__*) ;
 int UniStrCpy (int ,int,int ) ;
 int Unlock (int ) ;
 int UnlockList (int ) ;
 TYPE_5__* ZeroMalloc (int) ;

bool CtDisconnect(CLIENT *c, RPC_CLIENT_CONNECT *connect, bool inner)
{
 bool ret = 0;
 ACCOUNT t, *r;
 SESSION *s = ((void*)0);

 if (c == ((void*)0) || connect == ((void*)0))
 {
  return 0;
 }

 LockList(c->AccountList);
 {

  t.ClientOption = ZeroMalloc(sizeof(CLIENT_OPTION));
  UniStrCpy(t.ClientOption->AccountName, sizeof(t.ClientOption->AccountName), connect->AccountName);

  r = Search(c->AccountList, &t);
  if (r == ((void*)0))
  {

   UnlockList(c->AccountList);

   Free(t.ClientOption);
   CiSetError(c, ERR_ACCOUNT_NOT_FOUND);
   return 0;
  }

  Free(t.ClientOption);

  Lock(r->lock);
  {
   if (r->ClientSession == ((void*)0))
   {

    CiSetError(c, ERR_ACCOUNT_INACTIVE);
   }
   else
   {
    s = r->ClientSession;
    AddRef(s->ref);

    r->ClientSession = ((void*)0);
    ret = 1;
   }
  }
  Unlock(r->lock);
 }
 UnlockList(c->AccountList);

 if (s != ((void*)0))
 {

  CLog(c, "LC_DISCONNECT", connect->AccountName);
  StopSession(s);
  ReleaseSession(s);
 }


 if (ret != 0)
 {
  CiNotify(c);
 }

 return ret;
}
