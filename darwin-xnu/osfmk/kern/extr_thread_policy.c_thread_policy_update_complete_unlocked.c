
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_2__* thread_t ;
typedef TYPE_3__* task_pend_token_t ;
struct TYPE_10__ {scalar_t__ tpt_update_thread_sfi; scalar_t__ tpt_update_throttle; scalar_t__ tpt_update_sockets; } ;
struct TYPE_9__ {int uthread; TYPE_1__* task; } ;
struct TYPE_8__ {int bsd_info; } ;


 int proc_apply_task_networkbg (int ,TYPE_2__*) ;
 int rethrottle_thread (int ) ;
 int sfi_reevaluate (TYPE_2__*) ;

void
thread_policy_update_complete_unlocked(thread_t thread, task_pend_token_t pend_token)
{





 if (pend_token->tpt_update_throttle)
  rethrottle_thread(thread->uthread);

 if (pend_token->tpt_update_thread_sfi)
  sfi_reevaluate(thread);
}
