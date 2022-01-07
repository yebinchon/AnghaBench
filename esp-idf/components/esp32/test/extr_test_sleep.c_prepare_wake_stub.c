
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int esp_deep_sleep_start () ;
 int esp_set_deep_sleep_wake_stub (int *) ;
 int esp_sleep_enable_timer_wakeup (int) ;
 int wake_stub ;

__attribute__((used)) static void prepare_wake_stub(void)
{
    esp_set_deep_sleep_wake_stub(&wake_stub);
    esp_sleep_enable_timer_wakeup(100000);
    esp_deep_sleep_start();
}
