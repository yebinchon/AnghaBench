
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xSemaphoreHandle ;


 int ESP_LOGI (int ,char*) ;
 int TAG ;
 int exit_flag ;
 int mbedtls_rsa_self_test (int ) ;
 int vTaskDelete (int *) ;
 int xSemaphoreGive (int ) ;

__attribute__((used)) static void rsa_task(void *pvParameters)
{
    xSemaphoreHandle *sema = (xSemaphoreHandle *) pvParameters;
    ESP_LOGI(TAG, "rsa_task is started");
    while (exit_flag == 0) {
        mbedtls_rsa_self_test(0);
    }
    xSemaphoreGive(*sema);
    vTaskDelete(((void*)0));
}
