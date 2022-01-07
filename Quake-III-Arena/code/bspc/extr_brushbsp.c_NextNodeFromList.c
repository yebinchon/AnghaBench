
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ node_t ;


 scalar_t__ GetNumThreads () ;
 int ThreadLock () ;
 int ThreadSemaphoreIncrease (scalar_t__) ;
 int ThreadSemaphoreWait () ;
 int ThreadUnlock () ;
 TYPE_1__* firstnode ;
 int * lastnode ;
 int nodelistsize ;
 scalar_t__ numwaiting ;

node_t *NextNodeFromList(void)
{
 node_t *node;

 ThreadLock();
 numwaiting++;
 if (!firstnode)
 {
  if (numwaiting >= GetNumThreads()) ThreadSemaphoreIncrease(GetNumThreads());
 }
 ThreadUnlock();

 ThreadSemaphoreWait();

 ThreadLock();

 numwaiting--;

 node = firstnode;
 if (firstnode)
 {
  firstnode = firstnode->next;
  nodelistsize--;
 }
 if (!firstnode) lastnode = ((void*)0);

 ThreadUnlock();

 return node;
}
