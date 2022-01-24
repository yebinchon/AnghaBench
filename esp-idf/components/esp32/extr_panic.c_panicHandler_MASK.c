#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t exccause; int /*<<< orphan*/  pc; } ;
typedef  TYPE_1__ XtExcFrame ;

/* Variables and functions */
 int /*<<< orphan*/  APPTRACE_ONPANIC_HOST_FLUSH_TMO ; 
 int /*<<< orphan*/  CONFIG_ESP32_APPTRACE_POSTMORTEM_FLUSH_THRESH ; 
 int /*<<< orphan*/  ESP_APPTRACE_DEST_TRAX ; 
 int /*<<< orphan*/  ESP_RST_INT_WDT ; 
 size_t PANIC_RSN_CACHEERR ; 
 size_t PANIC_RSN_DEBUGEXCEPTION ; 
 size_t PANIC_RSN_INTWDT_CPU0 ; 
 size_t PANIC_RSN_INTWDT_CPU1 ; 
 size_t PANIC_RSN_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TIMER_GROUP_1 ; 
 int /*<<< orphan*/  TIMER_INTR_WDT ; 
 int XCHAL_DEBUGCAUSE_BREAKN_MASK ; 
 int XCHAL_DEBUGCAUSE_BREAK_MASK ; 
 int XCHAL_DEBUGCAUSE_DBREAK_MASK ; 
 int XCHAL_DEBUGCAUSE_DEBUGINT_MASK ; 
 int XCHAL_DEBUGCAUSE_IBREAK_MASK ; 
 int XCHAL_DEBUGCAUSE_ICOUNT_MASK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 TYPE_1__* other_core_frame ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 
 char* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int) ; 

void FUNC17(XtExcFrame *frame)
{
    int core_id = FUNC15();
    //Please keep in sync with PANIC_RSN_* defines
    const char *reasons[] = {
        "Unknown reason",
        "Unhandled debug exception",
        "Double exception",
        "Unhandled kernel exception",
        "Coprocessor exception",
        "Interrupt wdt timeout on CPU0",
        "Interrupt wdt timeout on CPU1",
        "Cache disabled but cached memory region accessed",
    };
    const char *reason = reasons[0];
    //The panic reason is stored in the EXCCAUSE register.
    if (frame->exccause <= PANIC_RSN_MAX) {
        reason = reasons[frame->exccause];
    }

#if !CONFIG_FREERTOS_UNICORE
    //Save frame for other core.
    if ((frame->exccause == PANIC_RSN_INTWDT_CPU0 && core_id == 1) || (frame->exccause == PANIC_RSN_INTWDT_CPU1 && core_id == 0)) {
        other_core_frame = frame;
        while (1);
    }

    //The core which triggers the interrupt watchdog will delay 1 us, so the other core can save its frame.
    if (frame->exccause == PANIC_RSN_INTWDT_CPU0 || frame->exccause == PANIC_RSN_INTWDT_CPU1) {
        FUNC8(1);
    }

    if (frame->exccause == PANIC_RSN_CACHEERR && FUNC4() != core_id) {
        // Cache error interrupt will be handled by the panic handler
        // on the other CPU.
        while (1);
    }
#endif //!CONFIG_FREERTOS_UNICORE

    if (frame->exccause == PANIC_RSN_INTWDT_CPU0 || frame->exccause == PANIC_RSN_INTWDT_CPU1) {
        FUNC7(ESP_RST_INT_WDT);
    }

    FUNC9();
    FUNC6();
    FUNC11("Guru Meditation Error: Core ");
    FUNC10(core_id);
    FUNC11(" panic'ed (");
    FUNC11(reason);
    FUNC11(")\r\n");
    if (frame->exccause == PANIC_RSN_DEBUGEXCEPTION) {
        int debugRsn;
        asm("rsr.debugcause %0":"=r"(debugRsn));
        FUNC11("Debug exception reason: ");
        if (debugRsn & XCHAL_DEBUGCAUSE_ICOUNT_MASK) {
            FUNC11("SingleStep ");
        }
        if (debugRsn & XCHAL_DEBUGCAUSE_IBREAK_MASK) {
            FUNC11("HwBreakpoint ");
        }
        if (debugRsn & XCHAL_DEBUGCAUSE_DBREAK_MASK) {
            //Unlike what the ISA manual says, this core seemingly distinguishes from a DBREAK
            //reason caused by watchdog 0 and one caused by watchdog 1 by setting bit 8 of the
            //debugcause if the cause is watchdog 1 and clearing it if it's watchdog 0.
            if (debugRsn & (1 << 8)) {
#if CONFIG_FREERTOS_WATCHPOINT_END_OF_STACK
                const char *name = pcTaskGetTaskName(xTaskGetCurrentTaskHandleForCPU(core_id));
                panicPutStr("Stack canary watchpoint triggered (");
                panicPutStr(name);
                panicPutStr(") ");
#else
                FUNC11("Watchpoint 1 triggered ");
#endif
            } else {
                FUNC11("Watchpoint 0 triggered ");
            }
        }
        if (debugRsn & XCHAL_DEBUGCAUSE_BREAK_MASK) {
            FUNC11("BREAK instr ");
        }
        if (debugRsn & XCHAL_DEBUGCAUSE_BREAKN_MASK) {
            FUNC11("BREAKN instr ");
        }
        if (debugRsn & XCHAL_DEBUGCAUSE_DEBUGINT_MASK) {
            FUNC11("DebugIntr ");
        }
        FUNC11("\r\n");
    }

    if (FUNC5()) {
        FUNC2();
        if (frame->exccause == PANIC_RSN_INTWDT_CPU0 ||
            frame->exccause == PANIC_RSN_INTWDT_CPU1) {
            FUNC14(TIMER_GROUP_1, TIMER_INTR_WDT);
        }
#if CONFIG_ESP32_APPTRACE_ENABLE
#if CONFIG_SYSVIEW_ENABLE
        SEGGER_RTT_ESP32_FlushNoLock(CONFIG_ESP32_APPTRACE_POSTMORTEM_FLUSH_THRESH, APPTRACE_ONPANIC_HOST_FLUSH_TMO);
#else
        esp_apptrace_flush_nolock(ESP_APPTRACE_DEST_TRAX, CONFIG_ESP32_APPTRACE_POSTMORTEM_FLUSH_THRESH,
                                  APPTRACE_ONPANIC_HOST_FLUSH_TMO);
#endif
#endif
        FUNC13(frame->pc);
        return;
    }
    FUNC1(frame);
}