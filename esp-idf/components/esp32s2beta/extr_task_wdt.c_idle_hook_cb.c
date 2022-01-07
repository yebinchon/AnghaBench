
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int esp_task_wdt_reset () ;

__attribute__((used)) static bool idle_hook_cb(void)
{
    esp_task_wdt_reset();
    return 1;
}
