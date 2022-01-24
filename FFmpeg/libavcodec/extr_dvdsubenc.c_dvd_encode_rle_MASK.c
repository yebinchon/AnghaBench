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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(uint8_t **pq,
                           const uint8_t *bitmap, int linesize,
                           int w, int h,
                           const int cmap[256])
{
    uint8_t *q;
    unsigned int bitbuf = 0;
    int ncnt;
    int x, y, len, color;

    q = *pq;

    for (y = 0; y < h; ++y) {
        ncnt = 0;
        for(x = 0; x < w; x += len) {
            color = bitmap[x];
            for (len=1; x+len < w; ++len)
                if (bitmap[x+len] != color)
                    break;
            color = cmap[color];
            FUNC1(color < 4);
            if (len < 0x04) {
                FUNC0((len << 2)|color);
            } else if (len < 0x10) {
                FUNC0(len >> 2);
                FUNC0((len << 2)|color);
            } else if (len < 0x40) {
                FUNC0(0);
                FUNC0(len >> 2);
                FUNC0((len << 2)|color);
            } else if (x+len == w) {
                FUNC0(0);
                FUNC0(0);
                FUNC0(0);
                FUNC0(color);
            } else {
                if (len > 0xff)
                    len = 0xff;
                FUNC0(0);
                FUNC0(len >> 6);
                FUNC0(len >> 2);
                FUNC0((len << 2)|color);
            }
        }
        /* end of line */
        if (ncnt & 1)
            FUNC0(0);
        bitmap += linesize;
    }

    *pq = q;
}