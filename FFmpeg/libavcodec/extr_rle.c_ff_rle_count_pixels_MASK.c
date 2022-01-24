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
typedef  scalar_t__ uint8_t ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__ const*,scalar_t__ const*,int) ; 

int FUNC2(const uint8_t *start, int len, int bpp, int same)
{
    const uint8_t *pos;
    int count = 1;

    for (pos = start + bpp; count < FUNC0(127, len); pos += bpp, count++) {
        if (same != !FUNC1(pos - bpp, pos, bpp)) {
            if (!same) {
                /* if bpp == 1, then 0 1 1 0 is more efficiently encoded as a
                 * single raw block of pixels. For larger bpp, RLE is as good
                 * or better */
                if (bpp == 1 && count + 1 < FUNC0(127, len) && *pos != *(pos + 1))
                    continue;

                /* if RLE can encode the next block better than as a raw block,
                 * back up and leave _all_ the identical pixels for RLE */
                count--;
            }
            break;
        }
    }

    return count;
}