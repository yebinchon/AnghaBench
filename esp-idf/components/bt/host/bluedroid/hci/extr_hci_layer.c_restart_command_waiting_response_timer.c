
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int timer_is_set; int commands_pending_response_lock; int command_response_timer; int commands_pending_response; } ;
typedef TYPE_1__ command_waiting_response_t ;


 int COMMAND_PENDING_TIMEOUT ;
 int OSI_MUTEX_MAX_TIMEOUT ;
 int list_is_empty (int ) ;
 int osi_alarm_cancel (int ) ;
 int osi_alarm_set (int ,int ) ;
 int osi_mutex_lock (int *,int ) ;
 int osi_mutex_unlock (int *) ;

__attribute__((used)) static void restart_command_waiting_response_timer(command_waiting_response_t *cmd_wait_q)
{
    osi_mutex_lock(&cmd_wait_q->commands_pending_response_lock, OSI_MUTEX_MAX_TIMEOUT);
    if (cmd_wait_q->timer_is_set) {
        osi_alarm_cancel(cmd_wait_q->command_response_timer);
        cmd_wait_q->timer_is_set = 0;
    }
    if (!list_is_empty(cmd_wait_q->commands_pending_response)) {
        osi_alarm_set(cmd_wait_q->command_response_timer, COMMAND_PENDING_TIMEOUT);
        cmd_wait_q->timer_is_set = 1;
    }
    osi_mutex_unlock(&cmd_wait_q->commands_pending_response_lock);
}
