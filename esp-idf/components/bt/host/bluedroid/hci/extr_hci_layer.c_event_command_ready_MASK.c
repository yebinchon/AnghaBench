#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_9__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ opcode; struct TYPE_11__* command; } ;
typedef  TYPE_1__ waiting_command_t ;
typedef  int /*<<< orphan*/  fixed_queue_t ;
struct TYPE_12__ {int /*<<< orphan*/  commands_pending_response_lock; int /*<<< orphan*/  commands_pending_response; } ;
typedef  TYPE_2__ command_waiting_response_t ;
struct TYPE_14__ {int /*<<< orphan*/  command_credits; TYPE_2__ cmd_waiting_q; } ;
struct TYPE_13__ {int /*<<< orphan*/  (* fragment_and_dispatch ) (TYPE_1__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FIXED_QUEUE_MAX_TIMEOUT ; 
 scalar_t__ HCI_HOST_NUM_PACKETS_DONE ; 
 scalar_t__ HCI_VENDOR_BLE_ADV_REPORT_FLOW_CONTROL ; 
 int /*<<< orphan*/  OSI_MUTEX_MAX_TIMEOUT ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_9__ hci_host_env ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_6__* packet_fragmenter ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC8(fixed_queue_t *queue)
{
    waiting_command_t *wait_entry = NULL;
    command_waiting_response_t *cmd_wait_q = &hci_host_env.cmd_waiting_q;

    wait_entry = FUNC0(queue, FIXED_QUEUE_MAX_TIMEOUT);

    if(wait_entry->opcode == HCI_HOST_NUM_PACKETS_DONE 
#if (BLE_ADV_REPORT_FLOW_CONTROL == TRUE)
    || wait_entry->opcode == HCI_VENDOR_BLE_ADV_REPORT_FLOW_CONTROL
#endif
    ){
        packet_fragmenter->fragment_and_dispatch(wait_entry->command);
        FUNC2(wait_entry->command);
        FUNC2(wait_entry);
        return;
    }
    hci_host_env.command_credits--;
    // Move it to the list of commands awaiting response
    FUNC3(&cmd_wait_q->commands_pending_response_lock, OSI_MUTEX_MAX_TIMEOUT);
    FUNC1(cmd_wait_q->commands_pending_response, wait_entry);
    FUNC4(&cmd_wait_q->commands_pending_response_lock);

    // Send it off
    packet_fragmenter->fragment_and_dispatch(wait_entry->command);

    FUNC5(cmd_wait_q);
}