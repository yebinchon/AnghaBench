
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int intr_handle_t ;
typedef scalar_t__ esp_err_t ;


 int ESP_INTR_FLAG_INTRDISABLED ;
 scalar_t__ ESP_OK ;
 int ETS_INTERNAL_TIMER1_INTR_SOURCE ;
 int TEST_ASSERT (int) ;
 scalar_t__ esp_intr_alloc (int ,int ,int ,int *,int *) ;
 int esp_intr_disable (int ) ;
 int esp_intr_enable (int ) ;
 scalar_t__ esp_intr_free (int ) ;
 int esp_intr_get_intno (int ) ;
 int int_timer_ctr ;
 int int_timer_handler ;
 int portTICK_PERIOD_MS ;
 int printf (char*,...) ;
 int vTaskDelay (int) ;
 scalar_t__ xthal_get_ccount () ;
 int xthal_set_ccompare (int,scalar_t__) ;

void local_timer_test(void)
{
    intr_handle_t ih;
    esp_err_t r;
    r=esp_intr_alloc(ETS_INTERNAL_TIMER1_INTR_SOURCE, 0, int_timer_handler, ((void*)0), &ih);
    TEST_ASSERT(r==ESP_OK);
    printf("Int timer 1 intno %d\n", esp_intr_get_intno(ih));
    xthal_set_ccompare(1, xthal_get_ccount()+8000000);
    int_timer_ctr=0;
    vTaskDelay(1000 / portTICK_PERIOD_MS);
    printf("Timer val after 1 sec: %d\n", int_timer_ctr);
    TEST_ASSERT(int_timer_ctr!=0);
    printf("Disabling int\n");
    esp_intr_disable(ih);
    int_timer_ctr=0;
    vTaskDelay(1000 / portTICK_PERIOD_MS);
    printf("Timer val after 1 sec: %d\n", int_timer_ctr);
    TEST_ASSERT(int_timer_ctr==0);
    printf("Re-enabling\n");
    esp_intr_enable(ih);
    vTaskDelay(1000 / portTICK_PERIOD_MS);
    printf("Timer val after 1 sec: %d\n", int_timer_ctr);
    TEST_ASSERT(int_timer_ctr!=0);

    printf("Free int, re-alloc disabled\n");
    r=esp_intr_free(ih);
    TEST_ASSERT(r==ESP_OK);
    r=esp_intr_alloc(ETS_INTERNAL_TIMER1_INTR_SOURCE, ESP_INTR_FLAG_INTRDISABLED, int_timer_handler, ((void*)0), &ih);
    TEST_ASSERT(r==ESP_OK);
    int_timer_ctr=0;
    vTaskDelay(1000 / portTICK_PERIOD_MS);
    printf("Timer val after 1 sec: %d\n", int_timer_ctr);
    TEST_ASSERT(int_timer_ctr==0);
    printf("Re-enabling\n");
    esp_intr_enable(ih);
    vTaskDelay(1000 / portTICK_PERIOD_MS);
    printf("Timer val after 1 sec: %d\n", int_timer_ctr);
    TEST_ASSERT(int_timer_ctr!=0);
    r=esp_intr_free(ih);
    TEST_ASSERT(r==ESP_OK);
    printf("Done.\n");
}
