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
typedef  size_t uint8_t ;
struct TYPE_3__ {int len; int /*<<< orphan*/  code; } ;
typedef  int /*<<< orphan*/  PutBitContext ;
typedef  TYPE_1__ HuffEntry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(uint8_t *src, uint8_t *dst, int dst_size,
                            int width, int height, HuffEntry *he)
{
    PutBitContext pb;
    int i, j;
    int count;

    FUNC1(&pb, dst, dst_size);

    /* Write the codes */
    for (j = 0; j < height; j++) {
        for (i = 0; i < width; i++)
            FUNC2(&pb, he[src[i]].len, he[src[i]].code);

        src += width;
    }

    /* Pad output to a 32-bit boundary */
    count = FUNC3(&pb) & 0x1F;

    if (count)
        FUNC2(&pb, 32 - count, 0);

    /* Get the amount of bits written */
    count = FUNC3(&pb);

    /* Flush the rest with zeroes */
    FUNC0(&pb);

    return count;
}