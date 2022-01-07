
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ClientAuth; int ClientOption; int * ServerCert; } ;
typedef TYPE_1__ RPC_CREATE_LINK ;


 int CiFreeClientAuth (int ) ;
 int Free (int ) ;
 int FreeX (int *) ;

void FreeRpcCreateLink(RPC_CREATE_LINK *t)
{

 if (t == ((void*)0))
 {
  return;
 }

 if (t->ServerCert != ((void*)0))
 {
  FreeX(t->ServerCert);
 }
 Free(t->ClientOption);
 CiFreeClientAuth(t->ClientAuth);
}
