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
typedef  int int64_t ;
typedef  int /*<<< orphan*/  GetByteContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int LZF_LITERAL_MAX ; 
 int LZF_LONG_BACKREF ; 
 int /*<<< orphan*/  FUNC0 (int*,int,int) ; 
 int FUNC1 (int**,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(GetByteContext *gb, uint8_t **buf, int64_t *size)
{
    int ret     = 0;
    uint8_t *p  = *buf;
    int64_t len = 0;

    while (FUNC4(gb) > 2) {
        uint8_t s = FUNC3(gb);

        if (s < LZF_LITERAL_MAX) {
            s++;
            if (s > *size - len) {
                *size += *size /2;
                ret = FUNC1(buf, *size);
                if (ret < 0)
                    return ret;
                p = *buf + len;
            }

            FUNC2(gb, p, s);
            p   += s;
            len += s;
        } else {
            int l   = 2 + (s >> 5);
            int off = ((s & 0x1f) << 8) + 1;

            if (l == LZF_LONG_BACKREF)
                l += FUNC3(gb);

            off += FUNC3(gb);

            if (off > len)
                return AVERROR_INVALIDDATA;

            if (l > *size - len) {
                *size += *size / 2;
                ret = FUNC1(buf, *size);
                if (ret < 0)
                    return ret;
                p = *buf + len;
            }

            FUNC0(p, off, l);

            p   += l;
            len += l;
        }
    }

    *size = len;

    return 0;
}