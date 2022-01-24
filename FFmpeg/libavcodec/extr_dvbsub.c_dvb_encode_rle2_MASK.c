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
        *q++ = 0x10;
        bitbuf = 0;
        bitcnt = 6;

        x = 0;
        while (x < w) {
            x1 = x;
            color = bitmap[x1++];
            while (x1 < w && bitmap[x1] == color)
                x1++;
            len = x1 - x;
            if (color == 0 && len == 2) {
                FUNC0(0);
                FUNC0(0);
                FUNC0(1);
            } else if (len >= 3 && len <= 10) {
                v = len - 3;
                FUNC0(0);
                FUNC0((v >> 2) | 2);
                FUNC0(v & 3);
                FUNC0(color);
            } else if (len >= 12 && len <= 27) {
                v = len - 12;
                FUNC0(0);
                FUNC0(0);
                FUNC0(2);
                FUNC0(v >> 2);
                FUNC0(v & 3);
                FUNC0(color);
            } else if (len >= 29) {
                /* length = 29 ... 284 */
                if (len > 284)
                    len = 284;
                v = len - 29;
                FUNC0(0);
                FUNC0(0);
                FUNC0(3);
                FUNC0((v >> 6));
                FUNC0((v >> 4) & 3);
                FUNC0((v >> 2) & 3);
                FUNC0(v & 3);
                FUNC0(color);
            } else {
                FUNC0(color);
                if (color == 0) {
                    FUNC0(1);
                }
                len = 1;
            }
            x += len;
        }
        /* end of line */
        FUNC0(0);
        FUNC0(0);
        FUNC0(0);
        if (bitcnt != 6) {
            *q++ = bitbuf;
        }
        *q++ = 0xf0;
        bitmap += linesize;
    }
    *pq = q;
}