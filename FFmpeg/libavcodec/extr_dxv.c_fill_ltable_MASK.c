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
typedef  int /*<<< orphan*/  GetByteContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(GetByteContext *gb, uint32_t *table, int *nb_elements)
{
    unsigned half = 512, bits = 1023, left = 1024, input, mask;
    int value, counter = 0, rshift = 10, lshift = 30;

    mask = FUNC2(gb) >> 2;
    while (left) {
        if (counter >= 256)
            return AVERROR_INVALIDDATA;
        value = bits & mask;
        left -= bits & mask;
        mask >>= rshift;
        lshift -= rshift;
        table[counter++] = value;
        if (lshift < 16) {
            if (FUNC0(gb) <= 0)
                return AVERROR_INVALIDDATA;

            input = FUNC1(gb);
            mask += input << lshift;
            lshift += 16;
        }
        if (left < half) {
            half >>= 1;
            bits >>= 1;
            rshift--;
        }
    }

    for (; !table[counter - 1]; counter--)
        if (counter <= 0)
            return AVERROR_INVALIDDATA;

    *nb_elements = counter;

    if (counter < 256)
        FUNC4(&table[counter], 0, 4 * (256 - counter));

    if (lshift >= 16)
        FUNC3(gb, -2, SEEK_CUR);

    return 0;
}