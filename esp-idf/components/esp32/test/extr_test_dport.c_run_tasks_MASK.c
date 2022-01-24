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
typedef  int /*<<< orphan*/  xSemaphoreHandle ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  TaskHandle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ UNITY_FREERTOS_PRIORITY ; 
 int apb_intr_test_result ; 
 int apb_test_result ; 
 int dport_test_result ; 
 int exit_flag ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 int portTICK_PERIOD_MS ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void (*) (void*),char const*,int,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (void (*) (void*),char const*,int,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int) ; 

void FUNC8(const char *task1_description, void (* task1_func)(void *), const char *task2_description, void (* task2_func)(void *), uint32_t delay_ms)
{
    apb_intr_test_result = 1;
    int i;
    TaskHandle_t th[2];
    xSemaphoreHandle exit_sema[2];

    for (i=0; i<2; i++) {
        if((task1_func != NULL && i == 0) || (task2_func != NULL && i == 1)){
            exit_sema[i] = FUNC4();
        }
    }

    exit_flag = false;

#ifndef CONFIG_FREERTOS_UNICORE
    FUNC1("assign task accessing DPORT to core 0 and task accessing APB to core 1\n");
    if(task1_func != NULL) FUNC7(task1_func, task1_description, 2048, &exit_sema[0], UNITY_FREERTOS_PRIORITY - 1, &th[0], 0);
    if(task2_func != NULL) FUNC7(task2_func, task2_description, 2048, &exit_sema[1], UNITY_FREERTOS_PRIORITY - 1, &th[1], 1);
#else
    printf("assign task accessing DPORT and accessing APB\n");
    if(task1_func != NULL) xTaskCreate(task1_func, task1_description, 2048, &exit_sema[0], UNITY_FREERTOS_PRIORITY - 1, &th[0]);
    if(task2_func != NULL) xTaskCreate(task2_func, task2_description, 2048, &exit_sema[1], UNITY_FREERTOS_PRIORITY - 1, &th[1]);
#endif

    FUNC1("start wait for %d seconds [Test %s and %s]\n", delay_ms/1000, task1_description, task2_description);
    FUNC3(delay_ms / portTICK_PERIOD_MS);

    // set exit flag to let thread exit
    exit_flag = true;

    for (i=0; i<2; i++) {
        if ((task1_func != NULL && i == 0) || (task2_func != NULL && i == 1)) {
            FUNC5(exit_sema[i], portMAX_DELAY);
            FUNC2(exit_sema[i]);
        }
    }
    FUNC0(dport_test_result == true && apb_test_result == true && apb_intr_test_result == 1);
}