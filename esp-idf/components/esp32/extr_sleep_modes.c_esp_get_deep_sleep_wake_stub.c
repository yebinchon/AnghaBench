
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int * esp_deep_sleep_wake_stub_fn_t ;


 scalar_t__ REG_READ (int ) ;
 int REG_WRITE (int ,scalar_t__) ;
 int RTC_ENTRY_ADDR_REG ;
 int RTC_MEMORY_CRC_REG ;
 int _lock_acquire (int *) ;
 int _lock_release (int *) ;
 int esp_ptr_executable (int *) ;
 int lock_rtc_memory_crc ;
 int set_rtc_memory_crc () ;

esp_deep_sleep_wake_stub_fn_t esp_get_deep_sleep_wake_stub(void)
{
    _lock_acquire(&lock_rtc_memory_crc);
    uint32_t stored_crc = REG_READ(RTC_MEMORY_CRC_REG);
    set_rtc_memory_crc();
    uint32_t calc_crc = REG_READ(RTC_MEMORY_CRC_REG);
    REG_WRITE(RTC_MEMORY_CRC_REG, stored_crc);
    _lock_release(&lock_rtc_memory_crc);

    if(stored_crc != calc_crc) {
        return ((void*)0);
    }
    esp_deep_sleep_wake_stub_fn_t stub_ptr = (esp_deep_sleep_wake_stub_fn_t) REG_READ(RTC_ENTRY_ADDR_REG);
    if (!esp_ptr_executable(stub_ptr)) {
        return ((void*)0);
    }
    return stub_ptr;
}
