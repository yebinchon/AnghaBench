
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int QUEUE ;


 void* GetNext (int *) ;
 int LockQueue (int *) ;
 int UnlockQueue (int *) ;

void *GetNextWithLock(QUEUE *q)
{
 void *p;

 if (q == ((void*)0))
 {
  return ((void*)0);
 }

 LockQueue(q);
 {
  p = GetNext(q);
 }
 UnlockQueue(q);

 return p;
}
