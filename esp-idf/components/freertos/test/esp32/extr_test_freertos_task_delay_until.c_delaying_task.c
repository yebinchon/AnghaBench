
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
typedef scalar_t__ TickType_t ;


 int IDEAL_DELAY_PERIOD_MS ;
 int IDEAL_DELAY_PERIOD_US ;
 int NO_OF_CYCLES ;
 int TEST_ASSERT_EQUAL (int ,int ) ;
 int TEST_ASSERT_UINT32_WITHIN (int ,int ,int ) ;
 int TICKS_TO_DELAY ;
 int TICKS_TO_MS (scalar_t__) ;
 int TICK_PERIOD_US ;
 scalar_t__ ref_clock_get () ;
 int task_delete_semphr ;
 int vTaskDelay (int) ;
 int vTaskDelayUntil (scalar_t__*,int ) ;
 int vTaskDelete (int *) ;
 int xSemaphoreGive (int ) ;
 scalar_t__ xTaskGetTickCount () ;

__attribute__((used)) static void delaying_task(void* arg)
{
    uint64_t ref_prev, ref_current;
    TickType_t last_wake_time;
    TickType_t ticks_before_delay;

    vTaskDelay(1);

    last_wake_time = xTaskGetTickCount();
    ticks_before_delay = last_wake_time;
    ref_prev = ref_clock_get();

    for(int i = 0; i < NO_OF_CYCLES; i++){

        vTaskDelayUntil(&last_wake_time, TICKS_TO_DELAY);

        TEST_ASSERT_EQUAL(IDEAL_DELAY_PERIOD_MS, TICKS_TO_MS(xTaskGetTickCount() - ticks_before_delay));
        ref_current = ref_clock_get();
        TEST_ASSERT_UINT32_WITHIN(TICK_PERIOD_US, IDEAL_DELAY_PERIOD_US, (uint32_t)(ref_current - ref_prev));
        ref_prev = ref_current;
        ticks_before_delay = last_wake_time;
    }


    xSemaphoreGive(task_delete_semphr);
    vTaskDelete(((void*)0));
}
