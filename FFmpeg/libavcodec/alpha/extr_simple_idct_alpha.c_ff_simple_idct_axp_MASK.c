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
typedef  int uint64_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 

void FUNC4(int16_t *block)
{

    int i;
    int rowsZero = 1;           /* all rows except row 0 zero */
    int rowsConstant = 1;       /* all rows consist of a constant value */

    for (i = 0; i < 8; i++) {
        int sparseness = FUNC2(block + 8 * i);

        if (i > 0 && sparseness > 0)
            rowsZero = 0;
        if (sparseness == 2)
            rowsConstant = 0;
    }

    if (rowsZero) {
        FUNC1(block);
    } else if (rowsConstant) {
        FUNC0(block);
        for (i = 0; i < 8; i += 2) {
            uint64_t v = (uint16_t) block[0];
            uint64_t w = (uint16_t) block[8];

            v |= v << 16;
            w |= w << 16;
            v |= v << 32;
            w |= w << 32;
            FUNC3(v, block + 0 * 4);
            FUNC3(v, block + 1 * 4);
            FUNC3(w, block + 2 * 4);
            FUNC3(w, block + 3 * 4);
            block += 4 * 4;
        }
    } else {
        for (i = 0; i < 8; i++)
            FUNC0(block + i);
    }
}