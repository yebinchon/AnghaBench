
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ESP_INTR_FLAG_IRAM ;
 int ESP_INTR_FLAG_LEVEL5 ;
 int ETS_INTERNAL_TIMER2_INTR_SOURCE ;
 int TEST_ESP_OK (int ) ;
 int esp_intr_alloc (int ,int,int *,int *,int *) ;
 int esp_intr_free (int ) ;
 int exit_flag ;
 int inth ;
 int printf (char*,int) ;
 int vTaskDelete (int *) ;
 int xPortGetCoreID () ;

__attribute__((used)) static void init_hi_interrupt(void *arg)
{
    printf("init hi_interrupt on CPU%d \n", xPortGetCoreID());
    TEST_ESP_OK(esp_intr_alloc(ETS_INTERNAL_TIMER2_INTR_SOURCE, ESP_INTR_FLAG_LEVEL5 | ESP_INTR_FLAG_IRAM, ((void*)0), ((void*)0), &inth));
    while (exit_flag == 0);
    esp_intr_free(inth);
    printf("disable hi_interrupt on CPU%d \n", xPortGetCoreID());
    vTaskDelete(((void*)0));
}
