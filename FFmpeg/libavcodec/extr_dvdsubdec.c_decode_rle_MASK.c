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
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int FUNC0 (int,int) ; 
 int INT_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int*,int,int) ; 

__attribute__((used)) static int FUNC7(uint8_t *bitmap, int linesize, int w, int h, uint8_t used_color[256],
                      const uint8_t *buf, int start, int buf_size, int is_8bit)
{
    GetBitContext gb;
    int bit_len;
    int x, y, len, color;
    uint8_t *d;

    if (start >= buf_size)
        return -1;

    if (w <= 0 || h <= 0)
        return -1;

    bit_len = (buf_size - start) * 8;
    FUNC5(&gb, buf + start, bit_len);

    x = 0;
    y = 0;
    d = bitmap;
    for(;;) {
        if (FUNC4(&gb) > bit_len)
            return -1;
        if (is_8bit)
            len = FUNC3(&gb, &color);
        else
            len = FUNC2(&gb, &color);
        if (len != INT_MAX && len > w - x)
            return AVERROR_INVALIDDATA;
        len = FUNC0(len, w - x);
        FUNC6(d + x, color, len);
        used_color[color] = 1;
        x += len;
        if (x >= w) {
            y++;
            if (y >= h)
                break;
            d += linesize;
            x = 0;
            /* byte align */
            FUNC1(&gb);
        }
    }
    return 0;
}