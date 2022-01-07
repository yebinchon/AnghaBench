
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ESP_LOGE (int ,char*) ;
 int TAG ;
 int vTaskDelete (int *) ;

__attribute__((used)) static void __attribute__((noreturn)) task_fatal_error(void)
{
    ESP_LOGE(TAG, "Exiting task due to fatal error...");
    (void)vTaskDelete(((void*)0));

    while (1) {
        ;
    }
}
