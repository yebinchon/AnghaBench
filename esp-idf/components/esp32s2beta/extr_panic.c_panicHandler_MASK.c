#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {size_t exccause; int /*<<< orphan*/  pc; } ;
typedef  TYPE_2__ XtExcFrame ;
struct TYPE_7__ {int wdt; } ;
struct TYPE_9__ {TYPE_1__ int_clr; } ;

/* Variables and functions */
 int /*<<< orphan*/  APPTRACE_ONPANIC_HOST_FLUSH_TMO ; 
 int /*<<< orphan*/  CONFIG_ESP32_APPTRACE_POSTMORTEM_FLUSH_TRAX_THRESH ; 
 int /*<<< orphan*/  ESP_APPTRACE_DEST_TRAX ; 
 size_t PANIC_RSN_CACHEERR ; 
 size_t PANIC_RSN_DEBUGEXCEPTION ; 
 size_t PANIC_RSN_INTWDT_CPU0 ; 
 size_t PANIC_RSN_INTWDT_CPU1 ; 
 size_t PANIC_RSN_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_6__ TIMERG1 ; 
 int XCHAL_DEBUGCAUSE_BREAKN_MASK ; 
 int XCHAL_DEBUGCAUSE_BREAK_MASK ; 
 int XCHAL_DEBUGCAUSE_DBREAK_MASK ; 
 int XCHAL_DEBUGCAUSE_DEBUGINT_MASK ; 
 int XCHAL_DEBUGCAUSE_IBREAK_MASK ; 
 int XCHAL_DEBUGCAUSE_ICOUNT_MASK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 TYPE_2__* other_core_frame ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int) ; 

void FUNC15(XtExcFrame *frame)
{
    int core_id = FUNC13();
    //Please keep in sync with PANIC_RSN_* defines
    const char *reasons[] = {
        "Unknown reason",
        "Unhandled debug exception",
        "Double exception",
        "Unhandled kernel exception",
        "Coprocessor exception",
        "Interrupt wdt timeout on CPU0",
        "Interrupt wdt timeout on CPU1",
        "Cache exception",
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
        FUNC6(1);
    }

    if (frame->exccause == PANIC_RSN_CACHEERR && FUNC4() != core_id) {
        // Cache error interrupt will be handled by the panic handler
        // on the other CPU.
        while (1);
    }
#endif //!CONFIG_FREERTOS_UNICORE

    FUNC7();
    FUNC9("Guru Meditation Error: Core ");
    FUNC8(core_id);
    FUNC9(" panic'ed (");
    FUNC9(reason);
    FUNC9(")\r\n");
    if (frame->exccause == PANIC_RSN_DEBUGEXCEPTION) {
        int debugRsn;
        asm("rsr.debugcause %0":"=r"(debugRsn));
        FUNC9("Debug exception reason: ");
        if (debugRsn & XCHAL_DEBUGCAUSE_ICOUNT_MASK) {
            FUNC9("SingleStep ");
        }
        if (debugRsn & XCHAL_DEBUGCAUSE_IBREAK_MASK) {
            FUNC9("HwBreakpoint ");
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
                FUNC9("Watchpoint 1 triggered ");
#endif
            } else {
                FUNC9("Watchpoint 0 triggered ");
            }
        }
        if (debugRsn & XCHAL_DEBUGCAUSE_BREAK_MASK) {
            FUNC9("BREAK instr ");
        }
        if (debugRsn & XCHAL_DEBUGCAUSE_BREAKN_MASK) {
            FUNC9("BREAKN instr ");
        }
        if (debugRsn & XCHAL_DEBUGCAUSE_DEBUGINT_MASK) {
            FUNC9("DebugIntr ");
        }
        FUNC9("\r\n");
    } else if (frame->exccause == PANIC_RSN_CACHEERR) {
        FUNC9("                                         ^~~~~~~~~~~~~~~\r\n");
        FUNC11();
    }

    if (FUNC5()) {
        FUNC2();
        if (frame->exccause == PANIC_RSN_INTWDT_CPU0 ||
            frame->exccause == PANIC_RSN_INTWDT_CPU1) {
            TIMERG1.int_clr.wdt = 1;
        }
#if CONFIG_ESP32_APPTRACE_ENABLE
#if CONFIG_SYSVIEW_ENABLE
        SEGGER_RTT_ESP32_FlushNoLock(CONFIG_ESP32_APPTRACE_POSTMORTEM_FLUSH_TRAX_THRESH, APPTRACE_ONPANIC_HOST_FLUSH_TMO);
#else
        esp_apptrace_flush_nolock(ESP_APPTRACE_DEST_TRAX, CONFIG_ESP32_APPTRACE_POSTMORTEM_FLUSH_TRAX_THRESH,
                                  APPTRACE_ONPANIC_HOST_FLUSH_TMO);
#endif
#endif
        FUNC12(frame->pc);
        return;
    }
    FUNC1(frame);
}