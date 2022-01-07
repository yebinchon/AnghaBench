
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xSemaphoreHandle ;
typedef int uint32_t ;
typedef int TaskHandle_t ;


 int TEST_ASSERT (int) ;
 scalar_t__ UNITY_FREERTOS_PRIORITY ;
 int apb_intr_test_result ;
 int apb_test_result ;
 int dport_test_result ;
 int exit_flag ;
 int portMAX_DELAY ;
 int portTICK_PERIOD_MS ;
 int printf (char*,...) ;
 int vSemaphoreDelete (int ) ;
 int vTaskDelay (int) ;
 int xSemaphoreCreateBinary () ;
 int xSemaphoreTake (int ,int ) ;
 int xTaskCreate (void (*) (void*),char const*,int,int *,scalar_t__,int *) ;
 int xTaskCreatePinnedToCore (void (*) (void*),char const*,int,int *,scalar_t__,int *,int) ;

void run_tasks(const char *task1_description, void (* task1_func)(void *), const char *task2_description, void (* task2_func)(void *), uint32_t delay_ms)
{
    apb_intr_test_result = 1;
    int i;
    TaskHandle_t th[2];
    xSemaphoreHandle exit_sema[2];

    for (i=0; i<2; i++) {
        if((task1_func != ((void*)0) && i == 0) || (task2_func != ((void*)0) && i == 1)){
            exit_sema[i] = xSemaphoreCreateBinary();
        }
    }

    exit_flag = 0;


    printf("assign task accessing DPORT to core 0 and task accessing APB to core 1\n");
    if(task1_func != ((void*)0)) xTaskCreatePinnedToCore(task1_func, task1_description, 2048, &exit_sema[0], UNITY_FREERTOS_PRIORITY - 1, &th[0], 0);
    if(task2_func != ((void*)0)) xTaskCreatePinnedToCore(task2_func, task2_description, 2048, &exit_sema[1], UNITY_FREERTOS_PRIORITY - 1, &th[1], 1);






    printf("start wait for %d seconds [Test %s and %s]\n", delay_ms/1000, task1_description, task2_description);
    vTaskDelay(delay_ms / portTICK_PERIOD_MS);


    exit_flag = 1;

    for (i=0; i<2; i++) {
        if ((task1_func != ((void*)0) && i == 0) || (task2_func != ((void*)0) && i == 1)) {
            xSemaphoreTake(exit_sema[i], portMAX_DELAY);
            vSemaphoreDelete(exit_sema[i]);
        }
    }
    TEST_ASSERT(dport_test_result == 1 && apb_test_result == 1 && apb_intr_test_result == 1);
}
