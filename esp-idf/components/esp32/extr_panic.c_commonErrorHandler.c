
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ exccause; } ;
typedef TYPE_1__ XtExcFrame ;


 int APPTRACE_ONPANIC_HOST_FLUSH_TMO ;
 int CONFIG_ESP32_APPTRACE_POSTMORTEM_FLUSH_THRESH ;
 int ESP_APPTRACE_DEST_TRAX ;
 scalar_t__ PANIC_RSN_CACHEERR ;
 int RTC_WDT_CPU_RESET_SIG ;
 int RTC_WDT_LENGTH_3_2us ;
 int RTC_WDT_STAGE0 ;
 int RTC_WDT_STAGE_ACTION_RESET_SYSTEM ;
 int RTC_WDT_SYS_RESET_SIG ;
 int SEGGER_RTT_ESP32_FlushNoLock (int ,int ) ;
 int commonErrorHandler_dump (TYPE_1__*,int) ;
 int disableAllWdts () ;
 int esp_apptrace_flush_nolock (int ,int ,int ) ;
 int esp_core_dump_to_flash (TYPE_1__*) ;
 int esp_core_dump_to_uart (TYPE_1__*) ;
 int esp_gdbstub_panic_handler (TYPE_1__*) ;
 int esp_panic_dig_reset () ;
 int esp_restart_noos () ;
 int * other_core_frame ;
 int panicPutStr (char*) ;
 int reconfigureAllWdts () ;
 int rtc_wdt_disable () ;
 int rtc_wdt_enable () ;
 int rtc_wdt_is_on () ;
 int rtc_wdt_protect_off () ;
 int rtc_wdt_protect_on () ;
 int rtc_wdt_set_length_of_reset_signal (int ,int ) ;
 int rtc_wdt_set_stage (int ,int ) ;
 int rtc_wdt_set_time (int ,int) ;
 int spi_flash_cache_enabled () ;
 int spi_flash_enable_cache (int) ;
 int xPortGetCoreID () ;

__attribute__((used)) static __attribute__((noreturn)) void commonErrorHandler(XtExcFrame *frame)
{

    int core_id = xPortGetCoreID();

    if (!rtc_wdt_is_on()) {
        rtc_wdt_protect_off();
        rtc_wdt_disable();
        rtc_wdt_set_length_of_reset_signal(RTC_WDT_SYS_RESET_SIG, RTC_WDT_LENGTH_3_2us);
        rtc_wdt_set_length_of_reset_signal(RTC_WDT_CPU_RESET_SIG, RTC_WDT_LENGTH_3_2us);
        rtc_wdt_set_stage(RTC_WDT_STAGE0, RTC_WDT_STAGE_ACTION_RESET_SYSTEM);


        rtc_wdt_set_time(RTC_WDT_STAGE0, 7000);
        rtc_wdt_enable();
        rtc_wdt_protect_on();
    }


    reconfigureAllWdts();

    commonErrorHandler_dump(frame, core_id);

    if (other_core_frame != ((void*)0)) {
        commonErrorHandler_dump((XtExcFrame *)other_core_frame, (core_id ? 0 : 1));
    }
    if (!spi_flash_cache_enabled()) {
        spi_flash_enable_cache(core_id);
        panicPutStr("Re-enable cpu cache.\r\n");
    }
    rtc_wdt_disable();
    disableAllWdts();
    panicPutStr("CPU halted.\r\n");
    while (1);


}
