
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int QUEUE ;


 int InsertQueue (int *,void*) ;
 int LockQueue (int *) ;
 int UnlockQueue (int *) ;

void InsertQueueWithLock(QUEUE *q, void *p)
{

 if (q == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 LockQueue(q);
 {
  InsertQueue(q, p);
 }
 UnlockQueue(q);
}
