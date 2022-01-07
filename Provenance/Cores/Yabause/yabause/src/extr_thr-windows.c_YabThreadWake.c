
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cond; int thd; } ;


 int SetEvent (int ) ;
 TYPE_1__* thread_handle ;

void YabThreadWake(unsigned int id)
{
   if (!thread_handle[id].thd)
      return;

   SetEvent(thread_handle[id].cond);
}
