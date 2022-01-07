
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pthread_join (scalar_t__,int *) ;
 scalar_t__* thread_handle ;

void YabThreadWait(unsigned int id)
{
   if (!thread_handle[id])
      return;

   pthread_join(thread_handle[id], ((void*)0));

   thread_handle[id] = 0;
}
