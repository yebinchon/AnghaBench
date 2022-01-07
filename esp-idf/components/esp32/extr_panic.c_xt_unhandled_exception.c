
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int exccause; int pc; } ;
typedef TYPE_1__ XtExcFrame ;


 int APPTRACE_ONPANIC_HOST_FLUSH_TMO ;
 int CONFIG_ESP32_APPTRACE_POSTMORTEM_FLUSH_THRESH ;
 int ESP_APPTRACE_DEST_TRAX ;
 int ESP_RST_PANIC ;
 int NUM_EDESCS ;
 int SEGGER_RTT_ESP32_FlushNoLock (int ,int ) ;
 int abort_called ;
 int commonErrorHandler (TYPE_1__*) ;
 char** edesc ;
 int esp_apptrace_flush_nolock (int ,int ,int ) ;
 scalar_t__ esp_cpu_in_ocd_debug_mode () ;
 int esp_dport_access_int_abort () ;
 int esp_reset_reason_set_hint (int ) ;
 int haltOtherCore () ;
 int illegal_instruction_helper (TYPE_1__*) ;
 int panicPutDec (int ) ;
 int panicPutHex (int ) ;
 int panicPutStr (char*) ;
 int setFirstBreakpoint (int ) ;
 int xPortGetCoreID () ;

void xt_unhandled_exception(XtExcFrame *frame)
{
    haltOtherCore();
    esp_dport_access_int_abort();
    if (!abort_called) {
        panicPutStr("Guru Meditation Error: Core ");
        panicPutDec(xPortGetCoreID());
        panicPutStr(" panic'ed (");
        int exccause = frame->exccause;
        if (exccause < NUM_EDESCS) {
            panicPutStr(edesc[exccause]);
        } else {
            panicPutStr("Unknown");
        }
        panicPutStr(")");
        if (esp_cpu_in_ocd_debug_mode()) {
            panicPutStr(" at pc=");
            panicPutHex(frame->pc);
            panicPutStr(". Setting bp and returning..\r\n");
            setFirstBreakpoint(frame->pc);
            return;
        }
        panicPutStr(". Exception was unhandled.\r\n");
        if (exccause == 0 ) {
            illegal_instruction_helper(frame);
        }
        esp_reset_reason_set_hint(ESP_RST_PANIC);
    }
    commonErrorHandler(frame);
}
