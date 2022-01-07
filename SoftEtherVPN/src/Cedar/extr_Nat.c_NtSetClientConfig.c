
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_9__ {scalar_t__ Online; int lock; int * ClientAuth; int * ClientOption; } ;
struct TYPE_8__ {int ClientAuth; int ClientOption; } ;
typedef TYPE_1__ RPC_CREATE_LINK ;
typedef TYPE_2__ NAT ;
typedef int CLIENT_OPTION ;


 int CiFreeClientAuth (int *) ;
 int Copy (int *,int ,int) ;
 int * CopyClientAuth (int ) ;
 int ERR_NO_ERROR ;
 int Free (int *) ;
 int Lock (int ) ;
 int NiWriteConfig (TYPE_2__*) ;
 int NtOffline (TYPE_2__*,int *) ;
 int NtOnline (TYPE_2__*,int *) ;
 int Unlock (int ) ;
 int * ZeroMalloc (int) ;

UINT NtSetClientConfig(NAT *n, RPC_CREATE_LINK *t)
{
 Lock(n->lock);
 {
  if (n->ClientOption != ((void*)0) || n->ClientAuth != ((void*)0))
  {
   Free(n->ClientOption);
   CiFreeClientAuth(n->ClientAuth);
  }

  n->ClientOption = ZeroMalloc(sizeof(CLIENT_OPTION));
  Copy(n->ClientOption, t->ClientOption, sizeof(CLIENT_OPTION));
  n->ClientAuth = CopyClientAuth(t->ClientAuth);
 }
 Unlock(n->lock);

 NiWriteConfig(n);

 if (n->Online)
 {
  NtOffline(n, ((void*)0));
  NtOnline(n, ((void*)0));
 }

 return ERR_NO_ERROR;
}
