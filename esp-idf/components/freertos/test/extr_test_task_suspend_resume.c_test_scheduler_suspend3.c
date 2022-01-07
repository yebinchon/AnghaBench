
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TimerHandle_t ;


 int TEST_ASSERT_INT_WITHIN (int,int,int) ;
 int control_task ;
 int delta_ms ;
 int duration_ctrl_task_ms ;
 int duration_timer_ms ;
 int pdTRUE ;
 int portMAX_DELAY ;
 int portTICK_PERIOD_MS ;
 int printf (char*,...) ;
 int timer_callback ;
 int vTaskDelay (int) ;
 int waiting_ms ;
 int xTaskCreatePinnedToCore (int *,char*,int,int *,int,int *,int) ;
 int xTimerCreate (char*,int,int ,int *,int ) ;
 int xTimerDelete (int ,int ) ;
 int xTimerStart (int ,int ) ;

__attribute__((used)) static void test_scheduler_suspend3(int cpu)
{
    duration_timer_ms = 0;
    duration_ctrl_task_ms = 0;

    printf("Test for CPU%d\n", cpu);
    TimerHandle_t count_time = xTimerCreate("count_time", 1, pdTRUE, ((void*)0), timer_callback);
    xTimerStart( count_time, portMAX_DELAY);
    xTaskCreatePinnedToCore(&control_task, "control_task", 8192, ((void*)0), 5, ((void*)0), cpu);

    vTaskDelay(waiting_ms * 2 / portTICK_PERIOD_MS);
    xTimerDelete(count_time, portMAX_DELAY);
    printf("Finish duration_timer_ms=%d ms\n", duration_timer_ms);

    TEST_ASSERT_INT_WITHIN(2, waiting_ms * 2, duration_timer_ms);
    TEST_ASSERT_INT_WITHIN(5, waiting_ms + delta_ms, duration_ctrl_task_ms);

    printf("\n");
}
