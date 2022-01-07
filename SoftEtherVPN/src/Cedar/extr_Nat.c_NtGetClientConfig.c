
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_8__ {int lock; int * ClientAuth; int * ClientOption; } ;
struct TYPE_7__ {int ClientAuth; int ClientOption; } ;
typedef TYPE_1__ RPC_CREATE_LINK ;
typedef TYPE_2__ NAT ;
typedef int CLIENT_OPTION ;


 int Copy (int ,int *,int) ;
 int CopyClientAuth (int *) ;
 int ERR_ACCOUNT_NOT_PRESENT ;
 int ERR_NO_ERROR ;
 int FreeRpcCreateLink (TYPE_1__*) ;
 int Lock (int ) ;
 int Unlock (int ) ;
 int Zero (TYPE_1__*,int) ;
 int ZeroMalloc (int) ;

UINT NtGetClientConfig(NAT *n, RPC_CREATE_LINK *t)
{
 UINT err = ERR_NO_ERROR;

 Lock(n->lock);
 {
  if (n->ClientOption == ((void*)0) || n->ClientAuth == ((void*)0))
  {
   err = ERR_ACCOUNT_NOT_PRESENT;
  }
  else
  {
   FreeRpcCreateLink(t);

   Zero(t, sizeof(RPC_CREATE_LINK));
   t->ClientOption = ZeroMalloc(sizeof(CLIENT_OPTION));
   Copy(t->ClientOption, n->ClientOption, sizeof(CLIENT_OPTION));
   t->ClientAuth = CopyClientAuth(n->ClientAuth);
  }
 }
 Unlock(n->lock);

 return err;
}
