
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int Virtual; } ;
struct TYPE_5__ {int lock; TYPE_3__* Nat; int Session; } ;
typedef TYPE_1__ SNAT ;


 int DeleteLock (int ) ;
 int Free (TYPE_1__*) ;
 int NiFreeNat (TYPE_3__*) ;
 int ReleaseSession (int ) ;
 int StopSession (int ) ;
 int Virtual_Free (int ) ;

void SnFreeSecureNAT(SNAT *s)
{

 if (s == ((void*)0))
 {
  return;
 }


 StopSession(s->Session);
 ReleaseSession(s->Session);


 Virtual_Free(s->Nat->Virtual);


 NiFreeNat(s->Nat);

 DeleteLock(s->lock);

 Free(s);
}
