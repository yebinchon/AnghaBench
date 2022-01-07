
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s64_t ;


 int esp_timer_get_time () ;

s64_t k_uptime_get(void)
{



    return (esp_timer_get_time() / 1000);
}
