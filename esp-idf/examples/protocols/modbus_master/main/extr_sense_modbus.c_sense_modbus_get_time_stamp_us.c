
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int esp_timer_get_time () ;

__attribute__((used)) static uint64_t sense_modbus_get_time_stamp_us(void)
{
    uint64_t time_stamp = esp_timer_get_time();
    return time_stamp;
}
