#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int exccause; int /*<<< orphan*/  pc; } ;
typedef  TYPE_1__ XtExcFrame ;

/* Variables and functions */
 int /*<<< orphan*/  APPTRACE_ONPANIC_HOST_FLUSH_TMO ; 
 int /*<<< orphan*/  CONFIG_ESP32_APPTRACE_POSTMORTEM_FLUSH_TRAX_THRESH ; 
 int /*<<< orphan*/  ESP_APPTRACE_DEST_TRAX ; 
 int NUM_EDESCS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  abort_called ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 char** edesc ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 

void FUNC10(XtExcFrame *frame)
{
    FUNC4();
    if (!abort_called) {
        FUNC7("Guru Meditation Error: Core ");
        FUNC5(FUNC9());
        FUNC7(" panic'ed (");
        int exccause = frame->exccause;
        if (exccause < NUM_EDESCS) {
            FUNC7(edesc[exccause]);
        } else {
            FUNC7("Unknown");
        }
        FUNC7(")");
#ifdef PANIC_COMPLETE_IN_ESP32C
        if (esp_cpu_in_ocd_debug_mode()) {
            panicPutStr(" at pc=");
            panicPutHex(frame->pc);
            panicPutStr(". Setting bp and returning..\r\n");
#if CONFIG_ESP32_APPTRACE_ENABLE
#if CONFIG_SYSVIEW_ENABLE
            SEGGER_RTT_ESP32_FlushNoLock(CONFIG_ESP32_APPTRACE_POSTMORTEM_FLUSH_TRAX_THRESH, APPTRACE_ONPANIC_HOST_FLUSH_TMO);
#else
            esp_apptrace_flush_nolock(ESP_APPTRACE_DEST_TRAX, CONFIG_ESP32_APPTRACE_POSTMORTEM_FLUSH_TRAX_THRESH,
                                      APPTRACE_ONPANIC_HOST_FLUSH_TMO);
#endif
#endif
            //Stick a hardware breakpoint on the address the handler returns to. This way, the OCD debugger
            //will kick in exactly at the context the error happened.
            setFirstBreakpoint(frame->pc);
            return;
        }
#endif
        FUNC7(". Exception was unhandled.\r\n");
    }
    FUNC1(frame);
}