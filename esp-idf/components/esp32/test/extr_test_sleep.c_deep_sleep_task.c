
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int esp_deep_sleep_start () ;

__attribute__((used)) static void deep_sleep_task(void *arg)
{
    esp_deep_sleep_start();
}
