
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32_t ;


 int esp_timer_get_time () ;

u32_t k_uptime_get_32(void)
{



    return (u32_t)(esp_timer_get_time() / 1000);
}
