
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
typedef TYPE_1__ LIST ;


 int Unlock (int ) ;

void UnlockList(LIST *o)
{

 if (o == ((void*)0))
 {
  return;
 }

 Unlock(o->lock);
}
