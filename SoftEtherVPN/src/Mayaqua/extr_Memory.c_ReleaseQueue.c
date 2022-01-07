
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * ref; } ;
typedef TYPE_1__ QUEUE ;


 int CleanupQueue (TYPE_1__*) ;
 scalar_t__ Release (int *) ;

void ReleaseQueue(QUEUE *q)
{

 if (q == ((void*)0))
 {
  return;
 }

 if (q->ref == ((void*)0) || Release(q->ref) == 0)
 {
  CleanupQueue(q);
 }
}
