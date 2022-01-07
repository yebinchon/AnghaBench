
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ClientOption; int ClientAuth; int * ServerCert; } ;
typedef TYPE_1__ RPC_CLIENT_CREATE_ACCOUNT ;


 int CiFreeClientAuth (int ) ;
 int Free (int ) ;
 int FreeX (int *) ;

void CiFreeClientCreateAccount(RPC_CLIENT_CREATE_ACCOUNT *a)
{

 if (a == ((void*)0))
 {
  return;
 }


 if (a->ServerCert != ((void*)0))
 {
  FreeX(a->ServerCert);
 }
 CiFreeClientAuth(a->ClientAuth);
 Free(a->ClientOption);
}
