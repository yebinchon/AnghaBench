
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int VH_OPTION ;
struct TYPE_11__ {int Virtual; } ;
struct TYPE_10__ {int Cedar; } ;
struct TYPE_9__ {TYPE_6__* Nat; int lock; TYPE_2__* Hub; int Cedar; } ;
typedef int THREAD ;
typedef TYPE_1__ SNAT ;
typedef TYPE_2__ HUB ;


 int NewLock () ;
 int * NewThread (int ,TYPE_1__*) ;
 TYPE_6__* NiNewNatEx (TYPE_1__*,int *) ;
 int ReleaseThread (int *) ;
 int SnSecureNATThread ;
 int VirtualInit (int ) ;
 int WaitThreadInit (int *) ;
 TYPE_1__* ZeroMalloc (int) ;

SNAT *SnNewSecureNAT(HUB *h, VH_OPTION *o)
{
 SNAT *s;
 THREAD *t;

 if (h == ((void*)0) || o == ((void*)0))
 {
  return ((void*)0);
 }

 s = ZeroMalloc(sizeof(SNAT));
 s->Cedar = h->Cedar;
 s->Hub = h;
 s->lock = NewLock();


 s->Nat = NiNewNatEx(s, o);


 VirtualInit(s->Nat->Virtual);


 t = NewThread(SnSecureNATThread, s);
 WaitThreadInit(t);
 ReleaseThread(t);

 return s;
}
