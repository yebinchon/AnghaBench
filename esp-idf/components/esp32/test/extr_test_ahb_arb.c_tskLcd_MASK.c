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
typedef  int uint16_t ;

/* Variables and functions */
 int DMALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int* FUNC3 (int) ; 
 int portTICK_PERIOD_MS ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int*,int*,int) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(void *pvParameters)
{
    uint16_t *sbuf = FUNC3(DMALEN * 2);
    uint16_t *rbuf = FUNC3(DMALEN * 2);
    uint16_t xorval = 0;
    int x;
    FUNC2();
//  lcdFlush();
    while (1) {
        for (x = 0; x < DMALEN; x++) {
            sbuf[x] = x ^ xorval;
        }
        for (x = 0; x < DMALEN; x++) {
            rbuf[x] = 0;    //clear rbuf
        }
        FUNC5(sbuf, rbuf, DMALEN);
        FUNC6(20 / portTICK_PERIOD_MS);
        FUNC1();
        for (x = 0; x < DMALEN; x++) if (rbuf[x] != (x ^ xorval)) {
                FUNC4("Rxbuf err! pos %d val %x xor %x", x, (int)rbuf[x], (int)xorval);
            }
        FUNC4(".");
        FUNC0(stdout);
        xorval++;
    }
}