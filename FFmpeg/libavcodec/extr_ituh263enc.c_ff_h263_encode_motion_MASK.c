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
typedef  int /*<<< orphan*/  PutBitContext ;

/* Variables and functions */
 int** ff_mvtab ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC1 (int,int) ; 

void FUNC2(PutBitContext *pb, int val, int f_code)
{
    int range, bit_size, sign, code, bits;

    if (val == 0) {
        /* zero vector */
        code = 0;
        FUNC0(pb, ff_mvtab[code][1], ff_mvtab[code][0]);
    } else {
        bit_size = f_code - 1;
        range = 1 << bit_size;
        /* modulo encoding */
        val = FUNC1(val, 6 + bit_size);
        sign = val>>31;
        val= (val^sign)-sign;
        sign&=1;

        val--;
        code = (val >> bit_size) + 1;
        bits = val & (range - 1);

        FUNC0(pb, ff_mvtab[code][1] + 1, (ff_mvtab[code][0] << 1) | sign);
        if (bit_size > 0) {
            FUNC0(pb, bit_size, bits);
        }
    }
}