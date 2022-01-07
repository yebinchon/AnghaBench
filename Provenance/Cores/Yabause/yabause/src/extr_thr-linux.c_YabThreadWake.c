
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGUSR1 ;
 int pthread_kill (int ,int ) ;
 int * thread_handle ;

void YabThreadWake(unsigned int id)
{
   if (!thread_handle[id])
      return;

   pthread_kill(thread_handle[id], SIGUSR1);
}
