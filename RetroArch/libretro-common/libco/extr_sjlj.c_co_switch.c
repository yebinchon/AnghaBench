
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ cothread_t ;
struct TYPE_3__ {int context; } ;
typedef TYPE_1__ cothread_struct ;


 TYPE_1__* co_running ;
 int siglongjmp (int ,int) ;
 int sigsetjmp (int ,int ) ;

void co_switch(cothread_t cothread)
{
   if (!sigsetjmp(co_running->context, 0))
   {
      co_running = (cothread_struct*)cothread;
      siglongjmp(co_running->context, 1);
   }
}
