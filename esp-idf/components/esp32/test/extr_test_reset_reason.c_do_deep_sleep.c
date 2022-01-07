
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int esp_deep_sleep_start () ;
 int esp_sleep_enable_timer_wakeup (int) ;
 int setup_values () ;

__attribute__((used)) static void do_deep_sleep(void)
{
    setup_values();
    esp_sleep_enable_timer_wakeup(10000);
    esp_deep_sleep_start();
}
