
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int wchar_t ;
typedef int c ;
typedef scalar_t__ UINT ;
struct TYPE_15__ {int * AccountList; } ;
struct TYPE_14__ {int lock; TYPE_1__* ClientOption; scalar_t__ StartupAccount; } ;
struct TYPE_13__ {int AccountName; } ;
struct TYPE_12__ {int AccountName; } ;
typedef TYPE_2__ RPC_CLIENT_CONNECT ;
typedef int LIST ;
typedef TYPE_3__ ACCOUNT ;


 int Add (int *,int ) ;
 int CiCheckOs () ;
 int CiInitKeep (TYPE_4__*) ;
 int CiInitSaver (TYPE_4__*) ;
 TYPE_4__* CiNewClient () ;
 int CiStartRpcServer (TYPE_4__*) ;
 int CopyUniStr (int ) ;
 int CtConnect (TYPE_4__*,TYPE_2__*) ;
 int Free (int *) ;
 void* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int Lock (int ) ;
 int LockList (int *) ;
 int * NewListFast (int *) ;
 int RegistWindowsFirewallAll () ;
 int ReleaseList (int *) ;
 int UniStrCpy (int ,int,int *) ;
 int Unlock (int ) ;
 int UnlockList (int *) ;
 int Zero (TYPE_2__*,int) ;
 TYPE_4__* client ;

void CtStartClient()
{
 UINT i;
 LIST *o;
 if (client != ((void*)0))
 {

  return;
 }


 CiCheckOs();






 client = CiNewClient();


 CiInitKeep(client);


 CiStartRpcServer(client);


 CiInitSaver(client);


 o = NewListFast(((void*)0));
 LockList(client->AccountList);
 {
  for (i = 0;i < LIST_NUM(client->AccountList);i++)
  {
   ACCOUNT *a = LIST_DATA(client->AccountList, i);
   Lock(a->lock);
   {
    if (a->StartupAccount)
    {
     Add(o, CopyUniStr(a->ClientOption->AccountName));
    }
   }
   Unlock(a->lock);
  }
 }
 UnlockList(client->AccountList);

 for (i = 0;i < LIST_NUM(o);i++)
 {
  wchar_t *s = LIST_DATA(o, i);
  RPC_CLIENT_CONNECT c;
  Zero(&c, sizeof(c));
  UniStrCpy(c.AccountName, sizeof(c.AccountName), s);
  CtConnect(client, &c);
  Free(s);
 }
 ReleaseList(o);
}
