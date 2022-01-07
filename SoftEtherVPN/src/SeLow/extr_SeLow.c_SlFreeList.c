
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; struct TYPE_4__* p; } ;
typedef TYPE_1__ SL_LIST ;


 int SlFree (TYPE_1__*) ;
 int SlFreeLock (int ) ;

void SlFreeList(SL_LIST *o)
{

 if (o == ((void*)0))
 {
  return;
 }

 SlFree(o->p);
 SlFreeLock(o->lock);

 SlFree(o);
}
