
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ opcode; struct TYPE_11__* command; } ;
typedef TYPE_1__ waiting_command_t ;
typedef int fixed_queue_t ;
struct TYPE_12__ {int commands_pending_response_lock; int commands_pending_response; } ;
typedef TYPE_2__ command_waiting_response_t ;
struct TYPE_14__ {int command_credits; TYPE_2__ cmd_waiting_q; } ;
struct TYPE_13__ {int (* fragment_and_dispatch ) (TYPE_1__*) ;} ;


 int FIXED_QUEUE_MAX_TIMEOUT ;
 scalar_t__ HCI_HOST_NUM_PACKETS_DONE ;
 scalar_t__ HCI_VENDOR_BLE_ADV_REPORT_FLOW_CONTROL ;
 int OSI_MUTEX_MAX_TIMEOUT ;
 TYPE_1__* fixed_queue_dequeue (int *,int ) ;
 TYPE_9__ hci_host_env ;
 int list_append (int ,TYPE_1__*) ;
 int osi_free (TYPE_1__*) ;
 int osi_mutex_lock (int *,int ) ;
 int osi_mutex_unlock (int *) ;
 TYPE_6__* packet_fragmenter ;
 int restart_command_waiting_response_timer (TYPE_2__*) ;
 int stub1 (TYPE_1__*) ;
 int stub2 (TYPE_1__*) ;

__attribute__((used)) static void event_command_ready(fixed_queue_t *queue)
{
    waiting_command_t *wait_entry = ((void*)0);
    command_waiting_response_t *cmd_wait_q = &hci_host_env.cmd_waiting_q;

    wait_entry = fixed_queue_dequeue(queue, FIXED_QUEUE_MAX_TIMEOUT);

    if(wait_entry->opcode == HCI_HOST_NUM_PACKETS_DONE

    || wait_entry->opcode == HCI_VENDOR_BLE_ADV_REPORT_FLOW_CONTROL

    ){
        packet_fragmenter->fragment_and_dispatch(wait_entry->command);
        osi_free(wait_entry->command);
        osi_free(wait_entry);
        return;
    }
    hci_host_env.command_credits--;

    osi_mutex_lock(&cmd_wait_q->commands_pending_response_lock, OSI_MUTEX_MAX_TIMEOUT);
    list_append(cmd_wait_q->commands_pending_response, wait_entry);
    osi_mutex_unlock(&cmd_wait_q->commands_pending_response_lock);


    packet_fragmenter->fragment_and_dispatch(wait_entry->command);

    restart_command_waiting_response_timer(cmd_wait_q);
}
