
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef int wchar_t ;
typedef int title ;
typedef int t ;
typedef scalar_t__ UINT ;
typedef scalar_t__ UCHAR ;
struct TYPE_28__ {scalar_t__* ShortcutKey; int lock; TYPE_1__* ClientOption; } ;
struct TYPE_23__ {int AllowRemoteConfig; } ;
struct TYPE_27__ {scalar_t__ Err; scalar_t__* EncryptedPassword; int lock; TYPE_2__ Config; scalar_t__ PasswordRemoteOnly; int AccountList; } ;
struct TYPE_26__ {int * AccountName; } ;
struct TYPE_24__ {int* addr; } ;
struct TYPE_25__ {TYPE_3__ RemoteIP; } ;
struct TYPE_22__ {int * AccountName; } ;
typedef TYPE_4__ SOCK ;
typedef TYPE_5__ RPC_CLIENT_CONNECT ;
typedef int RPC ;
typedef TYPE_6__ CLIENT ;
typedef TYPE_7__ ACCOUNT ;


 scalar_t__ CLIENT_RPC_MODE_NOTIFY ;
 scalar_t__ CLIENT_RPC_MODE_SHORTCUT ;
 scalar_t__ CLIENT_RPC_MODE_SHORTCUT_DISCONNECT ;
 int CiNotifyMain (TYPE_6__*,TYPE_4__*) ;
 int CiRpcDispatch ;
 scalar_t__ Cmp (scalar_t__*,scalar_t__*,int) ;
 scalar_t__ CtConnect (TYPE_6__*,TYPE_5__*) ;
 scalar_t__ CtDisconnect (TYPE_6__*,TYPE_5__*,int) ;
 scalar_t__ ERR_ACCOUNT_NOT_FOUND ;
 scalar_t__ ERR_NO_ERROR ;
 int EndRpc (int *) ;
 scalar_t__ Endian32 (scalar_t__) ;
 TYPE_7__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int Lock (int ) ;
 int LockList (int ) ;
 int MAX_ACCOUNT_NAME_LEN ;
 int RecvAll (TYPE_4__*,scalar_t__*,int,int) ;
 int RpcServer (int *) ;
 int SHA1_SIZE ;
 int SendAll (TYPE_4__*,scalar_t__*,int,int) ;
 int * StartRpcServer (TYPE_4__*,int ,TYPE_6__*) ;
 int UniStrCpy (int *,int,int *) ;
 int Unlock (int ) ;
 int UnlockList (int ) ;
 int Zero (TYPE_5__*,int) ;

void CiRpcAccepted(CLIENT *c, SOCK *s)
{
 UCHAR hashed_password[SHA1_SIZE];
 UINT rpc_mode;
 UINT retcode;
 RPC *rpc;

 if (c == ((void*)0) || s == ((void*)0))
 {
  return;
 }


 if (RecvAll(s, &rpc_mode, sizeof(UINT), 0) == 0)
 {
  return;
 }

 rpc_mode = Endian32(rpc_mode);

 if (rpc_mode == CLIENT_RPC_MODE_NOTIFY)
 {

  CiNotifyMain(c, s);
  return;
 }
 else if (rpc_mode == CLIENT_RPC_MODE_SHORTCUT || rpc_mode == CLIENT_RPC_MODE_SHORTCUT_DISCONNECT)
 {

  UCHAR key[SHA1_SIZE];
  UINT err = ERR_NO_ERROR;
  if (RecvAll(s, key, SHA1_SIZE, 0))
  {
   UINT i;
   wchar_t title[MAX_ACCOUNT_NAME_LEN + 1];
   bool ok = 0;

   LockList(c->AccountList);
   {
    for (i = 0;i < LIST_NUM(c->AccountList);i++)
    {
     ACCOUNT *a = LIST_DATA(c->AccountList, i);
     Lock(a->lock);
     {
      if (Cmp(a->ShortcutKey, key, SHA1_SIZE) == 0)
      {
       ok = 1;
       UniStrCpy(title, sizeof(title), a->ClientOption->AccountName);
      }
     }
     Unlock(a->lock);
    }
   }
   UnlockList(c->AccountList);

   if (ok == 0)
   {
    err = ERR_ACCOUNT_NOT_FOUND;
   }
   else
   {
    RPC_CLIENT_CONNECT t;
    Zero(&t, sizeof(t));
    UniStrCpy(t.AccountName, sizeof(t.AccountName), title);

    if (rpc_mode == CLIENT_RPC_MODE_SHORTCUT)
    {

     if (CtConnect(c, &t))
     {
      err = ERR_NO_ERROR;
     }
     else
     {
      err = c->Err;
     }
    }
    else
    {

     if (CtDisconnect(c, &t, 0))
     {
      err = ERR_NO_ERROR;
     }
     else
     {
      err = c->Err;
     }
    }
   }

   err = Endian32(err);
   SendAll(s, &err, sizeof(UINT), 0);
   (void)RecvAll(s, &err, sizeof(UINT), 0);
  }
  return;
 }


 if (RecvAll(s, hashed_password, SHA1_SIZE, 0) == 0)
 {
  return;
 }

 retcode = 0;


 if (Cmp(hashed_password, c->EncryptedPassword, SHA1_SIZE) != 0)
 {
  retcode = 1;
 }

 if (c->PasswordRemoteOnly && s->RemoteIP.addr[0] == 127)
 {


  retcode = 0;
 }

 Lock(c->lock);
 {
  if (c->Config.AllowRemoteConfig == 0)
  {


   if (s->RemoteIP.addr[0] != 127)
   {
    retcode = 2;
   }
  }
 }
 Unlock(c->lock);

 retcode = Endian32(retcode);

 if (SendAll(s, &retcode, sizeof(UINT), 0) == 0)
 {
  return;
 }



 if (retcode != 0)
 {

  return;
 }


 rpc = StartRpcServer(s, CiRpcDispatch, c);


 RpcServer(rpc);


 EndRpc(rpc);
}
