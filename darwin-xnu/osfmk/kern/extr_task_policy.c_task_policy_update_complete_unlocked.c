
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
typedef TYPE_2__* task_pend_token_t ;
struct TYPE_8__ {scalar_t__ tpt_update_coal_sfi; scalar_t__ tpt_update_live_donor; scalar_t__ tpt_update_watchers; scalar_t__ tpt_update_timers; scalar_t__ tpt_update_sockets; } ;
struct TYPE_7__ {int * coalition; int bsd_info; } ;


 size_t COALITION_TYPE_RESOURCE ;
 int THREAD_NULL ;
 int apply_appstate_watchers (TYPE_1__*) ;
 int coalition_for_each_task (int ,void*,int ) ;
 int ml_timer_evaluate () ;
 int proc_apply_task_networkbg (int ,int ) ;
 int task_importance_update_live_donor (TYPE_1__*) ;
 int task_sfi_reevaluate_cb ;

void
task_policy_update_complete_unlocked(task_t task, task_pend_token_t pend_token)
{






 if (pend_token->tpt_update_timers)
  ml_timer_evaluate();






 if (pend_token->tpt_update_live_donor)
  task_importance_update_live_donor(task);
}
