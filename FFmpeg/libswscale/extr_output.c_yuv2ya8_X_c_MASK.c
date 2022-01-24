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
FUNC1(SwsContext *c, const int16_t *lumFilter,
            const int16_t **lumSrc, int lumFilterSize,
            const int16_t *chrFilter, const int16_t **chrUSrc,
            const int16_t **chrVSrc, int chrFilterSize,
            const int16_t **alpSrc, uint8_t *dest, int dstW, int y)
{
    int hasAlpha = !!alpSrc;
    int i;

    for (i = 0; i < dstW; i++) {
        int j;
        int Y = 1 << 18, A = 1 << 18;

        for (j = 0; j < lumFilterSize; j++)
            Y += lumSrc[j][i] * lumFilter[j];

        Y >>= 19;
        if (Y  & 0x100)
            Y = FUNC0(Y);

        if (hasAlpha) {
            for (j = 0; j < lumFilterSize; j++)
                A += alpSrc[j][i] * lumFilter[j];

            A >>= 19;

            if (A & 0x100)
                A = FUNC0(A);
        }

        dest[2 * i    ] = Y;
        dest[2 * i + 1] = hasAlpha ? A : 255;
    }
}