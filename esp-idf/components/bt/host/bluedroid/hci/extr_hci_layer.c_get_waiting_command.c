
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ opcode; } ;
typedef TYPE_1__ waiting_command_t ;
typedef int list_node_t ;
struct TYPE_8__ {int commands_pending_response_lock; int commands_pending_response; } ;
typedef TYPE_2__ command_waiting_response_t ;
typedef scalar_t__ command_opcode_t ;
struct TYPE_9__ {TYPE_2__ cmd_waiting_q; } ;


 int OSI_MUTEX_MAX_TIMEOUT ;
 TYPE_5__ hci_host_env ;
 int * list_begin (int ) ;
 int const* list_end (int ) ;
 int * list_next (int const*) ;
 TYPE_1__* list_node (int const*) ;
 int list_remove (int ,TYPE_1__*) ;
 int osi_mutex_lock (int *,int ) ;
 int osi_mutex_unlock (int *) ;

__attribute__((used)) static waiting_command_t *get_waiting_command(command_opcode_t opcode)
{
    command_waiting_response_t *cmd_wait_q = &hci_host_env.cmd_waiting_q;
    osi_mutex_lock(&cmd_wait_q->commands_pending_response_lock, OSI_MUTEX_MAX_TIMEOUT);

    for (const list_node_t *node = list_begin(cmd_wait_q->commands_pending_response);
            node != list_end(cmd_wait_q->commands_pending_response);
            node = list_next(node)) {
        waiting_command_t *wait_entry = list_node(node);
        if (!wait_entry || wait_entry->opcode != opcode) {
            continue;
        }

        list_remove(cmd_wait_q->commands_pending_response, wait_entry);

        osi_mutex_unlock(&cmd_wait_q->commands_pending_response_lock);
        return wait_entry;
    }

    osi_mutex_unlock(&cmd_wait_q->commands_pending_response_lock);
    return ((void*)0);
}
