
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_3__ {int options; } ;


 int TH_OPT_SEND_IMPORTANCE ;
 scalar_t__ TRUE ;

void thread_enable_send_importance(thread_t thread, boolean_t enable)
{
 if (enable == TRUE)
  thread->options |= TH_OPT_SEND_IMPORTANCE;
 else
  thread->options &= ~TH_OPT_SEND_IMPORTANCE;
}
