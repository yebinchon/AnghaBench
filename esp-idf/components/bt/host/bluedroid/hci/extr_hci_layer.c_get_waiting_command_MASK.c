#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ opcode; } ;
typedef  TYPE_1__ waiting_command_t ;
typedef  int /*<<< orphan*/  list_node_t ;
struct TYPE_8__ {int /*<<< orphan*/  commands_pending_response_lock; int /*<<< orphan*/  commands_pending_response; } ;
typedef  TYPE_2__ command_waiting_response_t ;
typedef  scalar_t__ command_opcode_t ;
struct TYPE_9__ {TYPE_2__ cmd_waiting_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  OSI_MUTEX_MAX_TIMEOUT ; 
 TYPE_5__ hci_host_env ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static waiting_command_t *FUNC7(command_opcode_t opcode)
{
    command_waiting_response_t *cmd_wait_q = &hci_host_env.cmd_waiting_q;
    FUNC5(&cmd_wait_q->commands_pending_response_lock, OSI_MUTEX_MAX_TIMEOUT);

    for (const list_node_t *node = FUNC0(cmd_wait_q->commands_pending_response);
            node != FUNC1(cmd_wait_q->commands_pending_response);
            node = FUNC2(node)) {
        waiting_command_t *wait_entry = FUNC3(node);
        if (!wait_entry || wait_entry->opcode != opcode) {
            continue;
        }

        FUNC4(cmd_wait_q->commands_pending_response, wait_entry);

        FUNC6(&cmd_wait_q->commands_pending_response_lock);
        return wait_entry;
    }

    FUNC6(&cmd_wait_q->commands_pending_response_lock);
    return NULL;
}