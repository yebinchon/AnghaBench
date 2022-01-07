
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int exccause; int pc; } ;
typedef TYPE_1__ XtExcFrame ;


 int APPTRACE_ONPANIC_HOST_FLUSH_TMO ;
 int CONFIG_ESP32_APPTRACE_POSTMORTEM_FLUSH_TRAX_THRESH ;
 int ESP_APPTRACE_DEST_TRAX ;
 int NUM_EDESCS ;
 int SEGGER_RTT_ESP32_FlushNoLock (int ,int ) ;
 int abort_called ;
 int commonErrorHandler (TYPE_1__*) ;
 char** edesc ;
 int esp_apptrace_flush_nolock (int ,int ,int ) ;
 scalar_t__ esp_cpu_in_ocd_debug_mode () ;
 int haltOtherCore () ;
 int panicPutDec (int ) ;
 int panicPutHex (int ) ;
 int panicPutStr (char*) ;
 int setFirstBreakpoint (int ) ;
 int xPortGetCoreID () ;

void xt_unhandled_exception(XtExcFrame *frame)
{
    haltOtherCore();
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
        panicPutStr(". Exception was unhandled.\r\n");
    }
    commonErrorHandler(frame);
}
