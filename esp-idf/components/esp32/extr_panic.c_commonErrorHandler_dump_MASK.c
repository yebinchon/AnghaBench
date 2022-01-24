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
typedef  int /*<<< orphan*/  sha256_buf ;
typedef  int /*<<< orphan*/  XtExcFrame ;

/* Variables and functions */
 int /*<<< orphan*/  abort_called ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/ * other_core_frame ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 scalar_t__ FUNC5 () ; 

__attribute__((used)) static void FUNC6(XtExcFrame *frame, int core_id)
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
        FUNC4("Core");
        FUNC2(core_id);
        FUNC4(" register dump:\r\n");

        for (x = 0; x < 24; x += 4) {
            for (y = 0; y < 4; y++) {
                if (sdesc[x + y][0] != 0) {
                    FUNC4(sdesc[x + y]);
                    FUNC4(": 0x");
                    FUNC3(regs[x + y + 1]);
                    FUNC4("  ");
                }
            }
            FUNC4("\r\n");
        }

        if (FUNC5()
#if !CONFIG_FREERTOS_UNICORE
            && other_core_frame != frame
#endif //!CONFIG_FREERTOS_UNICORE
            ) {
            //If the core which triggers the interrupt watchdog was in ISR context, dump the epc registers.
            uint32_t __value;
            FUNC4("Core");
            FUNC2(core_id);
            FUNC4(" was running in ISR context:\r\n");

            __asm__("rsr.epc1 %0" : "=a"(__value));
            FUNC4("EPC1    : 0x");
            FUNC3(__value);

            __asm__("rsr.epc2 %0" : "=a"(__value));
            FUNC4("  EPC2    : 0x");
            FUNC3(__value);

            __asm__("rsr.epc3 %0" : "=a"(__value));
            FUNC4("  EPC3    : 0x");
            FUNC3(__value);

            __asm__("rsr.epc4 %0" : "=a"(__value));
            FUNC4("  EPC4    : 0x");
            FUNC3(__value);

            FUNC4("\r\n");
        }

    }

    FUNC4("\r\nELF file SHA256: ");
    char sha256_buf[65];
    FUNC1(sha256_buf, sizeof(sha256_buf));
    FUNC4(sha256_buf);
    FUNC4("\r\n");

    /* With windowed ABI backtracing is easy, let's do it. */
    FUNC0(frame, 100);

    FUNC4("\r\n");
}