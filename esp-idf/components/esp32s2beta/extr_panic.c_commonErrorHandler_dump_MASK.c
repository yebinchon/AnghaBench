#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  XtExcFrame ;

/* Variables and functions */
 int /*<<< orphan*/  abort_called ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * other_core_frame ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 scalar_t__ FUNC4 () ; 

__attribute__((used)) static void FUNC5(XtExcFrame *frame, int core_id)
{
    int *regs = (int *)frame;
    int x, y;
    const char *sdesc[] = {
        "PC      ", "PS      ", "A0      ", "A1      ", "A2      ", "A3      ", "A4      ", "A5      ",
        "A6      ", "A7      ", "A8      ", "A9      ", "A10     ", "A11     ", "A12     ", "A13     ",
        "A14     ", "A15     ", "SAR     ", "EXCCAUSE", "EXCVADDR", "LBEG    ", "LEND    ", "LCOUNT  "
    };

    /* only dump registers for 'real' crashes, if crashing via abort()
       the register window is no longer useful.
    */
    if (!abort_called) {
        FUNC3("Core");
        FUNC1(core_id);
        FUNC3(" register dump:\r\n");

        for (x = 0; x < 24; x += 4) {
            for (y = 0; y < 4; y++) {
                if (sdesc[x + y][0] != 0) {
                    FUNC3(sdesc[x + y]);
                    FUNC3(": 0x");
                    FUNC2(regs[x + y + 1]);
                    FUNC3("  ");
                }
            }
            FUNC3("\r\n");
        }

        if (FUNC4()
#if !CONFIG_FREERTOS_UNICORE
            && other_core_frame != frame
#endif //!CONFIG_FREERTOS_UNICORE
            ) {
            //If the core which triggers the interrupt watchdog was in ISR context, dump the epc registers.
            uint32_t __value;
            FUNC3("Core");
            FUNC1(core_id);
            FUNC3(" was running in ISR context:\r\n");

            __asm__("rsr.epc1 %0" : "=a"(__value));
            FUNC3("EPC1    : 0x");
            FUNC2(__value);

            __asm__("rsr.epc2 %0" : "=a"(__value));
            FUNC3("  EPC2    : 0x");
            FUNC2(__value);

            __asm__("rsr.epc3 %0" : "=a"(__value));
            FUNC3("  EPC3    : 0x");
            FUNC2(__value);

            __asm__("rsr.epc4 %0" : "=a"(__value));
            FUNC3("  EPC4    : 0x");
            FUNC2(__value);

            FUNC3("\r\n");
        }

    }

    /* With windowed ABI backtracing is easy, let's do it. */
    FUNC0(frame);

}