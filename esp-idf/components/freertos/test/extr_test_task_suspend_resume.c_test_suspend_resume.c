
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TaskHandle_t ;


 int TEST_ASSERT_EQUAL (unsigned int,unsigned int volatile) ;
 int TEST_ASSERT_NOT_EQUAL (unsigned int,unsigned int volatile) ;
 scalar_t__ UNITY_FREERTOS_PRIORITY ;
 int printf (char*,unsigned int volatile) ;
 int task_count ;
 int vTaskDelay (int) ;
 int vTaskDelete (int ) ;
 int vTaskResume (int ) ;
 int vTaskSuspend (int ) ;
 int xTaskCreatePinnedToCore (int ,char*,int,void*,scalar_t__,int *,int) ;

__attribute__((used)) static void test_suspend_resume(int target_core)
{
    volatile unsigned counter = 0;
    TaskHandle_t counter_task;

    xTaskCreatePinnedToCore(task_count, "Count", 2048,
                            (void *)&counter, UNITY_FREERTOS_PRIORITY + 1,
                            &counter_task, target_core);

    vTaskDelay(10);

    TEST_ASSERT_NOT_EQUAL(0, counter);



    const int TEST_ITERATIONS = 5;
    for (int i = 0; i < TEST_ITERATIONS; i++) {
        vTaskSuspend(counter_task);
        unsigned suspend_count = counter;
        printf("Suspending @ %d\n", suspend_count);

        vTaskDelay(2);

        printf("Still suspended @ %d\n", counter);


        TEST_ASSERT_EQUAL(suspend_count, counter);
        vTaskResume(counter_task);
        vTaskDelay(2);

        printf("Resumed @ %d\n", counter);

        TEST_ASSERT_NOT_EQUAL(suspend_count, counter);
    }

    vTaskDelete(counter_task);
}
