
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ DEEPSLEEP_RESET ;
 int ESP_LOGD (int ,char*,int) ;
 int SOC_RTC_DATA_HIGH ;
 int SOC_RTC_DATA_LOW ;
 int SOC_RTC_DRAM_HIGH ;
 int SOC_RTC_DRAM_LOW ;
 int SOC_RTC_IRAM_HIGH ;
 int SOC_RTC_IRAM_LOW ;
 int TAG ;
 scalar_t__ rtc_get_reset_reason (int ) ;
 scalar_t__ should_map (int) ;

__attribute__((used)) static bool should_load(uint32_t load_addr)
{


    bool load_rtc_memory = rtc_get_reset_reason(0) != DEEPSLEEP_RESET;

    if (should_map(load_addr)) {
        return 0;
    }

    if (load_addr < 0x10000000) {




        return 0;
    }

    if (!load_rtc_memory) {
        if (load_addr >= SOC_RTC_IRAM_LOW && load_addr < SOC_RTC_IRAM_HIGH) {
            ESP_LOGD(TAG, "Skipping RTC fast memory segment at 0x%08x", load_addr);
            return 0;
        }
        if (load_addr >= SOC_RTC_DRAM_LOW && load_addr < SOC_RTC_DRAM_HIGH) {
            ESP_LOGD(TAG, "Skipping RTC fast memory segment at 0x%08x", load_addr);
            return 0;
        }
        if (load_addr >= SOC_RTC_DATA_LOW && load_addr < SOC_RTC_DATA_HIGH) {
            ESP_LOGD(TAG, "Skipping RTC slow memory segment at 0x%08x", load_addr);
            return 0;
        }
    }

    return 1;
}
