
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * command_response_timer; int commands_pending_response_lock; int commands_pending_response; } ;
typedef TYPE_1__ command_waiting_response_t ;
struct TYPE_4__ {TYPE_1__ cmd_waiting_q; scalar_t__ packet_queue; scalar_t__ command_queue; } ;


 int fixed_queue_free (scalar_t__,int ) ;
 TYPE_2__ hci_host_env ;
 int list_free (int ) ;
 int osi_alarm_free (int *) ;
 int osi_free_func ;
 int osi_mutex_free (int *) ;

__attribute__((used)) static void hci_layer_deinit_env(void)
{
    command_waiting_response_t *cmd_wait_q;

    if (hci_host_env.command_queue) {
        fixed_queue_free(hci_host_env.command_queue, osi_free_func);
    }
    if (hci_host_env.packet_queue) {
        fixed_queue_free(hci_host_env.packet_queue, osi_free_func);
    }

    cmd_wait_q = &hci_host_env.cmd_waiting_q;
    list_free(cmd_wait_q->commands_pending_response);
    osi_mutex_free(&cmd_wait_q->commands_pending_response_lock);
    osi_alarm_free(cmd_wait_q->command_response_timer);
    cmd_wait_q->command_response_timer = ((void*)0);
}
