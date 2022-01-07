
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* command; int * complete_future; int opcode; } ;
typedef TYPE_1__ waiting_command_t ;
typedef int uint8_t ;
typedef int future_t ;
struct TYPE_9__ {int command_queue; } ;
struct TYPE_8__ {int offset; int event; int * data; } ;
typedef TYPE_2__ BT_HDR ;


 int FIXED_QUEUE_MAX_TIMEOUT ;
 int MSG_STACK_TO_HC_HCI_CMD ;
 int OSI_THREAD_MAX_TIMEOUT ;
 int STREAM_TO_UINT16 (int ,int *) ;
 int assert (int ) ;
 int fixed_queue_enqueue (int ,TYPE_1__*,int ) ;
 int * future_new () ;
 TYPE_5__ hci_host_env ;
 int hci_host_task_post (int ) ;
 TYPE_1__* osi_calloc (int) ;

__attribute__((used)) static future_t *transmit_command_futured(BT_HDR *command)
{
    waiting_command_t *wait_entry = osi_calloc(sizeof(waiting_command_t));
    assert(wait_entry != ((void*)0));

    future_t *future = future_new();

    uint8_t *stream = command->data + command->offset;
    STREAM_TO_UINT16(wait_entry->opcode, stream);
    wait_entry->complete_future = future;
    wait_entry->command = command;



    command->event = MSG_STACK_TO_HC_HCI_CMD;

    fixed_queue_enqueue(hci_host_env.command_queue, wait_entry, FIXED_QUEUE_MAX_TIMEOUT);
    hci_host_task_post(OSI_THREAD_MAX_TIMEOUT);
    return future;
}
