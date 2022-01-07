
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * ServerCert; struct TYPE_4__* Policy; int Auth; struct TYPE_4__* Option; scalar_t__ ClientSession; int lock; } ;
typedef TYPE_1__ LINK ;


 int CiFreeClientAuth (int ) ;
 int DeleteLock (int ) ;
 int Free (TYPE_1__*) ;
 int FreeX (int *) ;
 int ReleaseSession (scalar_t__) ;

void CleanupLink(LINK *k)
{

 if (k == ((void*)0))
 {
  return;
 }

 DeleteLock(k->lock);
 if (k->ClientSession)
 {
  ReleaseSession(k->ClientSession);
 }
 Free(k->Option);
 CiFreeClientAuth(k->Auth);
 Free(k->Policy);

 if (k->ServerCert != ((void*)0))
 {
  FreeX(k->ServerCert);
 }

 Free(k);
}
