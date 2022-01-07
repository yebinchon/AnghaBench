
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ esp_deep_sleep_wake_stub_fn_t ;


 int REG_WRITE (int ,int ) ;
 int RTC_ENTRY_ADDR_REG ;
 int _lock_acquire (int *) ;
 int _lock_release (int *) ;
 int lock_rtc_memory_crc ;
 int set_rtc_memory_crc () ;

void esp_set_deep_sleep_wake_stub(esp_deep_sleep_wake_stub_fn_t new_stub)
{
    _lock_acquire(&lock_rtc_memory_crc);
    REG_WRITE(RTC_ENTRY_ADDR_REG, (uint32_t)new_stub);
    set_rtc_memory_crc();
    _lock_release(&lock_rtc_memory_crc);
}
