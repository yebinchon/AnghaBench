
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * lock; struct TYPE_4__* p; } ;
typedef TYPE_1__ LIST ;


 int DeleteLock (int *) ;
 int Free (TYPE_1__*) ;
 int KS_FREELIST_COUNT ;
 int KS_INC (int ) ;

void CleanupList(LIST *o)
{

 if (o == ((void*)0))
 {
  return;
 }

 Free(o->p);
 if (o->lock != ((void*)0))
 {
  DeleteLock(o->lock);
 }
 Free(o);


 KS_INC(KS_FREELIST_COUNT);
}
