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
typedef  int uint8_t ;
typedef  int int16_t ;
typedef  int /*<<< orphan*/  SwsContext ;

/* Variables and functions */
 int FUNC0 (int) ; 

__attribute__((used)) static void
FUNC1(SwsContext *c, const int16_t *buf0,
            const int16_t *ubuf[2], const int16_t *vbuf[2],
            const int16_t *abuf0, uint8_t *dest, int dstW,
            int uvalpha, int y)
{
    int hasAlpha = !!abuf0;
    int i;

    for (i = 0; i < dstW; i++) {
        int Y = (buf0[i] + 64) >> 7;
        int A;

        Y = FUNC0(Y);

        if (hasAlpha) {
            A = (abuf0[i] + 64) >> 7;
            if (A & 0x100)
                A = FUNC0(A);
        }

        dest[i * 2    ] = Y;
        dest[i * 2 + 1] = hasAlpha ? A : 255;
    }
}