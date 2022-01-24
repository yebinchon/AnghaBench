#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int f_code; int /*<<< orphan*/  pb; } ;
typedef  TYPE_1__ MpegEncContext ;

/* Variables and functions */
 int** ff_mvtab ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC1(MpegEncContext * s, int val)
{
    int range, bit_size, sign, code, bits;

    if (val == 0) {
        /* zero vector */
        code = 0;
        FUNC0(&s->pb, ff_mvtab[code][1], ff_mvtab[code][0]);
    } else {
        bit_size = s->f_code - 1;
        range = 1 << bit_size;
        if (val <= -64)
            val += 64;
        else if (val >= 64)
            val -= 64;

        if (val >= 0) {
            sign = 0;
        } else {
            val = -val;
            sign = 1;
        }
        val--;
        code = (val >> bit_size) + 1;
        bits = val & (range - 1);

        FUNC0(&s->pb, ff_mvtab[code][1] + 1, (ff_mvtab[code][0] << 1) | sign);
        if (bit_size > 0) {
            FUNC0(&s->pb, bit_size, bits);
        }
    }
}