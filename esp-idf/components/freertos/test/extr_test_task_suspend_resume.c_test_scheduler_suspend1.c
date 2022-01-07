
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST_ASSERT_INT_WITHIN (int,int,scalar_t__) ;
 int control_task ;
 int delta_ms ;
 scalar_t__ duration_ctrl_task_ms ;
 scalar_t__ duration_wait_task_ms ;
 int portTICK_PERIOD_MS ;
 int printf (char*,...) ;
 int suspend_both_cpus ;
 int vTaskDelay (int) ;
 int waiting_ms ;
 int waiting_task ;
 int xTaskCreatePinnedToCore (int *,char*,int,int *,int,int *,int) ;

__attribute__((used)) static void test_scheduler_suspend1(int cpu)
{





    duration_wait_task_ms = 0;
    duration_ctrl_task_ms = 0;

    printf("Test for CPU%d\n", cpu);
    int other_cpu = (cpu == 0) ? 1 : 0;
    xTaskCreatePinnedToCore(&waiting_task, "waiting_task", 8192, ((void*)0), 5, ((void*)0), other_cpu);
    xTaskCreatePinnedToCore(&control_task, "control_task", 8192, ((void*)0), 5, ((void*)0), cpu);

    vTaskDelay(waiting_ms * 2 / portTICK_PERIOD_MS);
    TEST_ASSERT_INT_WITHIN(4, waiting_ms + delta_ms + 4, duration_ctrl_task_ms);
    if (suspend_both_cpus == 0 && cpu == 1) {

        TEST_ASSERT_INT_WITHIN(2, waiting_ms, duration_wait_task_ms);
    } else {
        TEST_ASSERT_INT_WITHIN(4, waiting_ms + delta_ms + 4, duration_wait_task_ms);
    }

    printf("\n");
}
