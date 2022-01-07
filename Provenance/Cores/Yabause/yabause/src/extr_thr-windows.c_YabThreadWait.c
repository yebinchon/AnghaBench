
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * cond; scalar_t__ running; int * thd; } ;


 int CloseHandle (int *) ;
 int INFINITE ;
 int WaitForSingleObject (int *,int ) ;
 TYPE_1__* thread_handle ;

void YabThreadWait(unsigned int id)
{
   if (!thread_handle[id].thd)
      return;

   WaitForSingleObject(thread_handle[id].thd,INFINITE);
   CloseHandle(thread_handle[id].thd);
   thread_handle[id].thd = ((void*)0);
   thread_handle[id].running = 0;
   if (thread_handle[id].cond)
       CloseHandle(thread_handle[id].cond);
}
