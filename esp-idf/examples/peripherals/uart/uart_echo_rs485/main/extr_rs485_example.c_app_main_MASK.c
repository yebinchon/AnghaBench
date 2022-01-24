#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  ECHO_TASK_PRIO ; 
 int /*<<< orphan*/  ECHO_TASK_STACK_SIZE ; 
 int /*<<< orphan*/  echo_task ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC1(void)
{
    //A uart read/write example without event queue;
    FUNC0(echo_task, "uart_echo_task", ECHO_TASK_STACK_SIZE, NULL, ECHO_TASK_PRIO, NULL);
}