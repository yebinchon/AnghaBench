
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int XtExcFrame ;


 int abort_called ;
 int doBacktrace (int *) ;
 int * other_core_frame ;
 int panicPutDec (int) ;
 int panicPutHex (int) ;
 int panicPutStr (char const*) ;
 scalar_t__ xPortInterruptedFromISRContext () ;

__attribute__((used)) static void commonErrorHandler_dump(XtExcFrame *frame, int core_id)
{
    int *regs = (int *)frame;
    int x, y;
    const char *sdesc[] = {
        "PC      ", "PS      ", "A0      ", "A1      ", "A2      ", "A3      ", "A4      ", "A5      ",
        "A6      ", "A7      ", "A8      ", "A9      ", "A10     ", "A11     ", "A12     ", "A13     ",
        "A14     ", "A15     ", "SAR     ", "EXCCAUSE", "EXCVADDR", "LBEG    ", "LEND    ", "LCOUNT  "
    };




    if (!abort_called) {
        panicPutStr("Core");
        panicPutDec(core_id);
        panicPutStr(" register dump:\r\n");

        for (x = 0; x < 24; x += 4) {
            for (y = 0; y < 4; y++) {
                if (sdesc[x + y][0] != 0) {
                    panicPutStr(sdesc[x + y]);
                    panicPutStr(": 0x");
                    panicPutHex(regs[x + y + 1]);
                    panicPutStr("  ");
                }
            }
            panicPutStr("\r\n");
        }

        if (xPortInterruptedFromISRContext()

            && other_core_frame != frame

            ) {

            uint32_t __value;
            panicPutStr("Core");
            panicPutDec(core_id);
            panicPutStr(" was running in ISR context:\r\n");

            __asm__("rsr.epc1 %0" : "=a"(__value));
            panicPutStr("EPC1    : 0x");
            panicPutHex(__value);

            __asm__("rsr.epc2 %0" : "=a"(__value));
            panicPutStr("  EPC2    : 0x");
            panicPutHex(__value);

            __asm__("rsr.epc3 %0" : "=a"(__value));
            panicPutStr("  EPC3    : 0x");
            panicPutHex(__value);

            __asm__("rsr.epc4 %0" : "=a"(__value));
            panicPutStr("  EPC4    : 0x");
            panicPutHex(__value);

            panicPutStr("\r\n");
        }

    }


    doBacktrace(frame);

}
