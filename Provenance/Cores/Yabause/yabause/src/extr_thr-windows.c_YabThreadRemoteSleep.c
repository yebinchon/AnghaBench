
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cond; int thd; } ;


 int INFINITE ;
 int WaitForSingleObject (int ,int ) ;
 TYPE_1__* thread_handle ;

void YabThreadRemoteSleep(unsigned int id)
{
   if (!thread_handle[id].thd)
      return;

   WaitForSingleObject(thread_handle[id].cond,INFINITE);
}
