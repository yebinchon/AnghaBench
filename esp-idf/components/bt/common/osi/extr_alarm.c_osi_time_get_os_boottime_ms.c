
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int esp_timer_get_time () ;

uint32_t osi_time_get_os_boottime_ms(void)
{
    return (uint32_t)(esp_timer_get_time() / 1000);
}
