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
 int MESSAGE ; 
 int /*<<< orphan*/  TIMER_GROUP_0 ; 
 int /*<<< orphan*/  eSetValueWithOverwrite ; 
 int isr_give ; 
 int /*<<< orphan*/  notifs_sent ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 int /*<<< orphan*/  rec_task_handle ; 
 int /*<<< orphan*/  task_delete_semphr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  trigger_send_semphr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7 (void* arg){
    int curcore = FUNC2();

    //Test xTaskNotify
    FUNC4(trigger_send_semphr, portMAX_DELAY);
    notifs_sent++;
    FUNC5(rec_task_handle, (MESSAGE << curcore), eSetValueWithOverwrite);

    //Test xTaskNotifyGive
    FUNC4(trigger_send_semphr, portMAX_DELAY);
    notifs_sent++;
    FUNC6(rec_task_handle);

    //Test xTaskNotifyFromISR
    FUNC4(trigger_send_semphr, portMAX_DELAY);
    isr_give = false;
    FUNC0(TIMER_GROUP_0, curcore);

    //Test vTaskNotifyGiveFromISR
    FUNC4(trigger_send_semphr, portMAX_DELAY);
    isr_give = true;
    FUNC0(TIMER_GROUP_0, curcore);

    //Delete Task and Semaphores
    FUNC3(task_delete_semphr);
    FUNC1(NULL);
}