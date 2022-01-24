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
struct TYPE_5__ {int exccause; int /*<<< orphan*/  pc; } ;
typedef  TYPE_1__ XtExcFrame ;

/* Variables and functions */
 int /*<<< orphan*/  APPTRACE_ONPANIC_HOST_FLUSH_TMO ; 
 int /*<<< orphan*/  CONFIG_ESP32_APPTRACE_POSTMORTEM_FLUSH_THRESH ; 
 int /*<<< orphan*/  ESP_APPTRACE_DEST_TRAX ; 
 int /*<<< orphan*/  ESP_RST_PANIC ; 
 int NUM_EDESCS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  abort_called ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 char** edesc ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 

void FUNC13(XtExcFrame *frame)
{
    FUNC6();
    FUNC4();
    if (!abort_called) {
        FUNC10("Guru Meditation Error: Core ");
        FUNC8(FUNC12());
        FUNC10(" panic'ed (");
        int exccause = frame->exccause;
        if (exccause < NUM_EDESCS) {
            FUNC10(edesc[exccause]);
        } else {
            FUNC10("Unknown");
        }
        FUNC10(")");
        if (FUNC3()) {
            FUNC10(" at pc=");
            FUNC9(frame->pc);
            FUNC10(". Setting bp and returning..\r\n");
#if CONFIG_ESP32_APPTRACE_ENABLE
#if CONFIG_SYSVIEW_ENABLE
            SEGGER_RTT_ESP32_FlushNoLock(CONFIG_ESP32_APPTRACE_POSTMORTEM_FLUSH_THRESH, APPTRACE_ONPANIC_HOST_FLUSH_TMO);
#else
            esp_apptrace_flush_nolock(ESP_APPTRACE_DEST_TRAX, CONFIG_ESP32_APPTRACE_POSTMORTEM_FLUSH_THRESH,
                                      APPTRACE_ONPANIC_HOST_FLUSH_TMO);
#endif
#endif
            //Stick a hardware breakpoint on the address the handler returns to. This way, the OCD debugger
            //will kick in exactly at the context the error happened.
            FUNC11(frame->pc);
            return;
        }
        FUNC10(". Exception was unhandled.\r\n");
        if (exccause == 0 /* IllegalInstruction */) {
            FUNC7(frame);
        }
        FUNC5(ESP_RST_PANIC);
    }
    FUNC1(frame);
}