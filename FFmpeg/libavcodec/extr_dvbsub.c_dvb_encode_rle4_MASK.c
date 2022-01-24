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

__attribute__((used)) static void FUNC1(uint8_t **pq,
                            const uint8_t *bitmap, int linesize,
                            int w, int h)
{
    uint8_t *q;
    unsigned int bitbuf;
    int bitcnt;
    int x, y, len, x1, v, color;

    q = *pq;

    for(y = 0; y < h; y++) {
        *q++ = 0x11;
        bitbuf = 0;
        bitcnt = 4;

        x = 0;
        while (x < w) {
            x1 = x;
            color = bitmap[x1++];
            while (x1 < w && bitmap[x1] == color)
                x1++;
            len = x1 - x;
            if (color == 0 && len == 2) {
                FUNC0(0);
                FUNC0(0xd);
            } else if (color == 0 && (len >= 3 && len <= 9)) {
                FUNC0(0);
                FUNC0(len - 2);
            } else if (len >= 4 && len <= 7) {
                FUNC0(0);
                FUNC0(8 + len - 4);
                FUNC0(color);
            } else if (len >= 9 && len <= 24) {
                FUNC0(0);
                FUNC0(0xe);
                FUNC0(len - 9);
                FUNC0(color);
            } else if (len >= 25) {
                if (len > 280)
                    len = 280;
                v = len - 25;
                FUNC0(0);
                FUNC0(0xf);
                FUNC0(v >> 4);
                FUNC0(v & 0xf);
                FUNC0(color);
            } else {
                FUNC0(color);
                if (color == 0) {
                    FUNC0(0xc);
                }
                len = 1;
            }
            x += len;
        }
        /* end of line */
        FUNC0(0);
        FUNC0(0);
        if (bitcnt != 4) {
            *q++ = bitbuf;
        }
        *q++ = 0xf0;
        bitmap += linesize;
    }
    *pq = q;
}