
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ref; } ;
typedef TYPE_1__ THREAD ;


 int CleanupThreadInternal (TYPE_1__*) ;
 scalar_t__ Release (int ) ;

void ReleaseThreadInternal(THREAD *t)
{

 if (t == ((void*)0))
 {
  return;
 }

 if (Release(t->ref) == 0)
 {
  CleanupThreadInternal(t);
 }
}
