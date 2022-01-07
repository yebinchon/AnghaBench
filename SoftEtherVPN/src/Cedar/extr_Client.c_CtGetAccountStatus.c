
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_16__ {int AccountName; } ;
struct TYPE_15__ {int lock; int * ClientSession; TYPE_4__* ClientOption; } ;
struct TYPE_14__ {int AccountList; } ;
struct TYPE_13__ {int AccountName; } ;
typedef int SESSION ;
typedef TYPE_1__ RPC_CLIENT_GET_CONNECTION_STATUS ;
typedef int CLIENT_OPTION ;
typedef TYPE_2__ CLIENT ;
typedef TYPE_3__ ACCOUNT ;


 int CiGetSessionStatus (TYPE_1__*,int *) ;
 int CiSetError (TYPE_2__*,int ) ;
 int ERR_ACCOUNT_NOT_FOUND ;
 int Free (TYPE_4__*) ;
 int Lock (int ) ;
 int LockList (int ) ;
 TYPE_3__* Search (int ,TYPE_3__*) ;
 int UniStrCpy (int ,int,int ) ;
 int Unlock (int ) ;
 int UnlockList (int ) ;
 int Zero (TYPE_1__*,int) ;
 TYPE_4__* ZeroMalloc (int) ;

bool CtGetAccountStatus(CLIENT *c, RPC_CLIENT_GET_CONNECTION_STATUS *st)
{

 if (c == ((void*)0) || st == ((void*)0))
 {
  return 0;
 }

 LockList(c->AccountList);
 {
  ACCOUNT t, *r;


  t.ClientOption = ZeroMalloc(sizeof(CLIENT_OPTION));
  UniStrCpy(t.ClientOption->AccountName, sizeof(t.ClientOption->AccountName), st->AccountName);

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
   Zero(st, sizeof(RPC_CLIENT_GET_CONNECTION_STATUS));
   if (r->ClientSession != ((void*)0))
   {
    SESSION *s = r->ClientSession;
    CiGetSessionStatus(st, s);
   }
  }
  Unlock(r->lock);
 }
 UnlockList(c->AccountList);

 return 1;
}
