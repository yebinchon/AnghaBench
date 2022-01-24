#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ exccause; } ;
typedef  TYPE_1__ XtExcFrame ;

/* Variables and functions */
 int /*<<< orphan*/  APPTRACE_ONPANIC_HOST_FLUSH_TMO ; 
 int /*<<< orphan*/  CONFIG_ESP32_APPTRACE_POSTMORTEM_FLUSH_THRESH ; 
 int /*<<< orphan*/  ESP_APPTRACE_DEST_TRAX ; 
 scalar_t__ PANIC_RSN_CACHEERR ; 
 int /*<<< orphan*/  RTC_WDT_CPU_RESET_SIG ; 
 int /*<<< orphan*/  RTC_WDT_LENGTH_3_2us ; 
 int /*<<< orphan*/  RTC_WDT_STAGE0 ; 
 int /*<<< orphan*/  RTC_WDT_STAGE_ACTION_RESET_SYSTEM ; 
 int /*<<< orphan*/  RTC_WDT_SYS_RESET_SIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/ * other_core_frame ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (int) ; 
 int FUNC21 () ; 

__attribute__((used)) static __attribute__((noreturn)) void FUNC22(XtExcFrame *frame)
{

    int core_id = FUNC21();
    // start panic WDT to restart system if we hang in this handler
    if (!FUNC13()) {
        FUNC14();
        FUNC11();
        FUNC16(RTC_WDT_SYS_RESET_SIG, RTC_WDT_LENGTH_3_2us);
        FUNC16(RTC_WDT_CPU_RESET_SIG, RTC_WDT_LENGTH_3_2us);
        FUNC17(RTC_WDT_STAGE0, RTC_WDT_STAGE_ACTION_RESET_SYSTEM);
        // 64KB of core dump data (stacks of about 30 tasks) will produce ~85KB base64 data.
        // @ 115200 UART speed it will take more than 6 sec to print them out.
        FUNC18(RTC_WDT_STAGE0, 7000);
        FUNC12();
        FUNC15();
    }

    //Feed the watchdogs, so they will give us time to print out debug info
    FUNC10();

    FUNC1(frame, core_id);
#if !CONFIG_FREERTOS_UNICORE
    if (other_core_frame != NULL) {
        FUNC1((XtExcFrame *)other_core_frame, (core_id ? 0 : 1));
    }
#endif //!CONFIG_FREERTOS_UNICORE

#if CONFIG_ESP32_APPTRACE_ENABLE
    disableAllWdts();
#if CONFIG_SYSVIEW_ENABLE
    SEGGER_RTT_ESP32_FlushNoLock(CONFIG_ESP32_APPTRACE_POSTMORTEM_FLUSH_THRESH, APPTRACE_ONPANIC_HOST_FLUSH_TMO);
#else
    esp_apptrace_flush_nolock(ESP_APPTRACE_DEST_TRAX, CONFIG_ESP32_APPTRACE_POSTMORTEM_FLUSH_THRESH,
                              APPTRACE_ONPANIC_HOST_FLUSH_TMO);
#endif
    reconfigureAllWdts();
#endif

#if !CONFIG_ESP_PANIC_HANDLER_IRAM
    // Re-enable CPU cache for current CPU if it was disabled
    if (!FUNC19()) {
        FUNC20(core_id);
        FUNC9("Re-enable cpu cache.\r\n");
    }
#endif

#if CONFIG_ESP32_PANIC_GDBSTUB
    disableAllWdts();
    rtc_wdt_disable();
    panicPutStr("Entering gdb stub now.\r\n");
    esp_gdbstub_panic_handler(frame);
#else
#if CONFIG_ESP32_ENABLE_COREDUMP
    static bool s_dumping_core;
    if (s_dumping_core) {
        panicPutStr("Re-entered core dump! Exception happened during core dump!\r\n");
    } else {
        disableAllWdts();
        s_dumping_core = true;
#if CONFIG_ESP32_ENABLE_COREDUMP_TO_FLASH
        esp_core_dump_to_flash(frame);
#endif
#if CONFIG_ESP32_ENABLE_COREDUMP_TO_UART && !CONFIG_ESP32_PANIC_SILENT_REBOOT
        esp_core_dump_to_uart(frame);
#endif
        s_dumping_core = false;
        reconfigureAllWdts();
    }
#endif /* CONFIG_ESP32_ENABLE_COREDUMP */
    FUNC11();
#if CONFIG_ESP32_PANIC_PRINT_REBOOT || CONFIG_ESP32_PANIC_SILENT_REBOOT
    panicPutStr("Rebooting...\r\n");
    if (frame->exccause != PANIC_RSN_CACHEERR) {
        esp_restart_noos();
    } else {
        // The only way to clear invalid cache access interrupt is to reset the digital part
        esp_panic_dig_reset();
    }
#else
    FUNC2();
    FUNC9("CPU halted.\r\n");
    while (1);
#endif /* CONFIG_ESP32_PANIC_PRINT_REBOOT || CONFIG_ESP32_PANIC_SILENT_REBOOT */
#endif /* CONFIG_ESP32_PANIC_GDBSTUB */
}