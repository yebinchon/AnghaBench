
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * ServerCert; int ClientAuth; struct TYPE_4__* ClientOption; int lock; } ;
typedef TYPE_1__ ACCOUNT ;


 int CiFreeClientAuth (int ) ;
 int DeleteLock (int ) ;
 int Free (TYPE_1__*) ;
 int FreeX (int *) ;

void CiFreeAccount(ACCOUNT *a)
{

 if (a == ((void*)0))
 {
  return;
 }


 DeleteLock(a->lock);


 Free(a->ClientOption);


 CiFreeClientAuth(a->ClientAuth);

 if (a->ServerCert != ((void*)0))
 {
  FreeX(a->ServerCert);
 }

 Free(a);
}
