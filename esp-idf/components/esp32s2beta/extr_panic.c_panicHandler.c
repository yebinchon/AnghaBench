
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {size_t exccause; int pc; } ;
typedef TYPE_2__ XtExcFrame ;
struct TYPE_7__ {int wdt; } ;
struct TYPE_9__ {TYPE_1__ int_clr; } ;


 int APPTRACE_ONPANIC_HOST_FLUSH_TMO ;
 int CONFIG_ESP32_APPTRACE_POSTMORTEM_FLUSH_TRAX_THRESH ;
 int ESP_APPTRACE_DEST_TRAX ;
 size_t PANIC_RSN_CACHEERR ;
 size_t PANIC_RSN_DEBUGEXCEPTION ;
 size_t PANIC_RSN_INTWDT_CPU0 ;
 size_t PANIC_RSN_INTWDT_CPU1 ;
 size_t PANIC_RSN_MAX ;
 int SEGGER_RTT_ESP32_FlushNoLock (int ,int ) ;
 TYPE_6__ TIMERG1 ;
 int XCHAL_DEBUGCAUSE_BREAKN_MASK ;
 int XCHAL_DEBUGCAUSE_BREAK_MASK ;
 int XCHAL_DEBUGCAUSE_DBREAK_MASK ;
 int XCHAL_DEBUGCAUSE_DEBUGINT_MASK ;
 int XCHAL_DEBUGCAUSE_IBREAK_MASK ;
 int XCHAL_DEBUGCAUSE_ICOUNT_MASK ;
 int commonErrorHandler (TYPE_2__*) ;
 int disableAllWdts () ;
 int esp_apptrace_flush_nolock (int ,int ,int ) ;
 int esp_cache_err_get_cpuid () ;
 scalar_t__ esp_cpu_in_ocd_debug_mode () ;
 int ets_delay_us (int) ;
 int haltOtherCore () ;
 TYPE_2__* other_core_frame ;
 int panicPutDec (int) ;
 int panicPutStr (char const*) ;
 char* pcTaskGetTaskName (int ) ;
 int printCacheError () ;
 int setFirstBreakpoint (int ) ;
 int xPortGetCoreID () ;
 int xTaskGetCurrentTaskHandleForCPU (int) ;

void panicHandler(XtExcFrame *frame)
{
    int core_id = xPortGetCoreID();

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

    if (frame->exccause <= PANIC_RSN_MAX) {
        reason = reasons[frame->exccause];
    }



    if ((frame->exccause == PANIC_RSN_INTWDT_CPU0 && core_id == 1) || (frame->exccause == PANIC_RSN_INTWDT_CPU1 && core_id == 0)) {
        other_core_frame = frame;
        while (1);
    }


    if (frame->exccause == PANIC_RSN_INTWDT_CPU0 || frame->exccause == PANIC_RSN_INTWDT_CPU1) {
        ets_delay_us(1);
    }

    if (frame->exccause == PANIC_RSN_CACHEERR && esp_cache_err_get_cpuid() != core_id) {


        while (1);
    }


    haltOtherCore();
    panicPutStr("Guru Meditation Error: Core ");
    panicPutDec(core_id);
    panicPutStr(" panic'ed (");
    panicPutStr(reason);
    panicPutStr(")\r\n");
    if (frame->exccause == PANIC_RSN_DEBUGEXCEPTION) {
        int debugRsn;
        asm("rsr.debugcause %0":"=r"(debugRsn));
        panicPutStr("Debug exception reason: ");
        if (debugRsn & XCHAL_DEBUGCAUSE_ICOUNT_MASK) {
            panicPutStr("SingleStep ");
        }
        if (debugRsn & XCHAL_DEBUGCAUSE_IBREAK_MASK) {
            panicPutStr("HwBreakpoint ");
        }
        if (debugRsn & XCHAL_DEBUGCAUSE_DBREAK_MASK) {



            if (debugRsn & (1 << 8)) {






                panicPutStr("Watchpoint 1 triggered ");

            } else {
                panicPutStr("Watchpoint 0 triggered ");
            }
        }
        if (debugRsn & XCHAL_DEBUGCAUSE_BREAK_MASK) {
            panicPutStr("BREAK instr ");
        }
        if (debugRsn & XCHAL_DEBUGCAUSE_BREAKN_MASK) {
            panicPutStr("BREAKN instr ");
        }
        if (debugRsn & XCHAL_DEBUGCAUSE_DEBUGINT_MASK) {
            panicPutStr("DebugIntr ");
        }
        panicPutStr("\r\n");
    } else if (frame->exccause == PANIC_RSN_CACHEERR) {
        panicPutStr("                                         ^~~~~~~~~~~~~~~\r\n");
        printCacheError();
    }

    if (esp_cpu_in_ocd_debug_mode()) {
        disableAllWdts();
        if (frame->exccause == PANIC_RSN_INTWDT_CPU0 ||
            frame->exccause == PANIC_RSN_INTWDT_CPU1) {
            TIMERG1.int_clr.wdt = 1;
        }
        setFirstBreakpoint(frame->pc);
        return;
    }
    commonErrorHandler(frame);
}
