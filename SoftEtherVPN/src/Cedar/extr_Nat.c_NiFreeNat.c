
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lock; int HaltEvent; int Cedar; int * Virtual; } ;
typedef TYPE_1__ NAT ;


 int DeleteLock (int ) ;
 int Free (TYPE_1__*) ;
 int Lock (int ) ;
 int NiFreeConfig (TYPE_1__*) ;
 int ReleaseCedar (int ) ;
 int ReleaseEvent (int ) ;
 int ReleaseVirtual (int *) ;
 int StopVirtualHost (int *) ;
 int Unlock (int ) ;

void NiFreeNat(NAT *n)
{

 if (n == ((void*)0))
 {
  return;
 }





 Lock(n->lock);
 {
  if (n->Virtual != ((void*)0))
  {
   StopVirtualHost(n->Virtual);
   ReleaseVirtual(n->Virtual);
   n->Virtual = ((void*)0);
  }
 }
 Unlock(n->lock);


 NiFreeConfig(n);


 ReleaseCedar(n->Cedar);
 ReleaseEvent(n->HaltEvent);
 DeleteLock(n->lock);

 Free(n);
}
