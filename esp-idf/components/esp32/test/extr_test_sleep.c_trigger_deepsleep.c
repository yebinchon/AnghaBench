
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int esp_clk_slowclk_cal_get () ;
 int esp_clk_slowclk_cal_set (int) ;
 int esp_deep_sleep_start () ;
 int esp_set_time_from_rtc () ;
 int esp_sleep_enable_timer_wakeup (int) ;
 int gettimeofday (int *,int *) ;
 int portTICK_RATE_MS ;
 int printf (char*) ;
 int start ;
 int vTaskDelay (int) ;

__attribute__((used)) static void trigger_deepsleep(void)
{
    printf("Trigger deep sleep. Waiting for 10 sec ...\n");



    esp_clk_slowclk_cal_set(esp_clk_slowclk_cal_get() / 2);
    esp_set_time_from_rtc();


    vTaskDelay(10000/portTICK_RATE_MS);


    gettimeofday(&start, ((void*)0));
    esp_sleep_enable_timer_wakeup(1000);


    esp_deep_sleep_start();
}
