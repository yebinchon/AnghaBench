
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int task_t ;
typedef TYPE_1__* task_pend_token_t ;
typedef void* boolean_t ;
struct TYPE_3__ {int tpt_update_coal_sfi; void* tpt_update_tg_ui_flag; } ;


 void* FALSE ;
 int TASK_BACKGROUND_APPLICATION ;
 int TASK_FOREGROUND_APPLICATION ;
 void* TRUE ;
 scalar_t__ task_coalition_adjust_focal_count (int ,int,int*) ;
 scalar_t__ task_coalition_adjust_nonfocal_count (int ,int,int*) ;

__attribute__((used)) static boolean_t
task_policy_update_coalition_focal_tasks(task_t task,
                                         int prev_role,
                                         int next_role,
                                         task_pend_token_t pend_token)
{
 boolean_t sfi_transition = FALSE;
 uint32_t new_count = 0;


 if (prev_role != TASK_FOREGROUND_APPLICATION && next_role == TASK_FOREGROUND_APPLICATION) {
  if (task_coalition_adjust_focal_count(task, 1, &new_count) && (new_count == 1)) {
   sfi_transition = TRUE;
   pend_token->tpt_update_tg_ui_flag = TRUE;
  }
 } else if (prev_role == TASK_FOREGROUND_APPLICATION && next_role != TASK_FOREGROUND_APPLICATION) {
  if (task_coalition_adjust_focal_count(task, -1, &new_count) && (new_count == 0)) {
   sfi_transition = TRUE;
   pend_token->tpt_update_tg_ui_flag = TRUE;
  }
 }


 if (prev_role != TASK_BACKGROUND_APPLICATION && next_role == TASK_BACKGROUND_APPLICATION) {
  if (task_coalition_adjust_nonfocal_count(task, 1, &new_count) && (new_count == 1))
   sfi_transition = TRUE;
 } else if (prev_role == TASK_BACKGROUND_APPLICATION && next_role != TASK_BACKGROUND_APPLICATION) {
  if (task_coalition_adjust_nonfocal_count(task, -1, &new_count) && (new_count == 0))
   sfi_transition = TRUE;
 }

 if (sfi_transition)
     pend_token->tpt_update_coal_sfi = 1;
 return sfi_transition;
}
