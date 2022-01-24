#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int timer_is_set; int /*<<< orphan*/  commands_pending_response_lock; int /*<<< orphan*/  command_response_timer; int /*<<< orphan*/  commands_pending_response; } ;
typedef  TYPE_1__ command_waiting_response_t ;

/* Variables and functions */
 int /*<<< orphan*/  COMMAND_PENDING_TIMEOUT ; 
 int /*<<< orphan*/  OSI_MUTEX_MAX_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(command_waiting_response_t *cmd_wait_q)
{
    FUNC3(&cmd_wait_q->commands_pending_response_lock, OSI_MUTEX_MAX_TIMEOUT);
    if (cmd_wait_q->timer_is_set) {
        FUNC1(cmd_wait_q->command_response_timer);
        cmd_wait_q->timer_is_set = false;
    }
    if (!FUNC0(cmd_wait_q->commands_pending_response)) {
        FUNC2(cmd_wait_q->command_response_timer, COMMAND_PENDING_TIMEOUT);
        cmd_wait_q->timer_is_set = true;
    }
    FUNC4(&cmd_wait_q->commands_pending_response_lock);
}