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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int TASK_RESET_PERIOD_S ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(void *arg)
{
    //Subscribe this task to TWDT, then check if it is subscribed
    FUNC0(FUNC1(NULL), ESP_OK);
    FUNC0(FUNC3(NULL), ESP_OK);

    while(1){
        //reset the watchdog every 2 seconds
        FUNC0(FUNC2(), ESP_OK);  //Comment this line to trigger a TWDT timeout
        FUNC5(FUNC4(TASK_RESET_PERIOD_S * 1000));
    }
}