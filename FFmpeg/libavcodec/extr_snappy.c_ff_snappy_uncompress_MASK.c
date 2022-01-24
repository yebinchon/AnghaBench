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
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  GetByteContext ;

/* Variables and functions */
 int AVERROR_BUFFER_TOO_SMALL ; 
#define  SNAPPY_COPY_1 131 
#define  SNAPPY_COPY_2 130 
#define  SNAPPY_COPY_4 129 
#define  SNAPPY_LITERAL 128 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int*,int*,scalar_t__,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int*,int*,scalar_t__,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int*,int*,scalar_t__,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int*,scalar_t__,int) ; 

int FUNC7(GetByteContext *gb, uint8_t *buf, int64_t *size)
{
    int64_t len = FUNC2(gb);
    int ret     = 0;
    uint8_t *p;

    if (len < 0)
        return len;

    if (len > *size)
        return AVERROR_BUFFER_TOO_SMALL;

    *size = len;
    p     = buf;

    while (FUNC1(gb) > 0) {
        uint8_t s = FUNC0(gb);
        int val   = s >> 2;

        switch (s & 0x03) {
        case SNAPPY_LITERAL:
            ret = FUNC6(gb, p, len, val);
            break;
        case SNAPPY_COPY_1:
            ret = FUNC3(gb, buf, p, len, val);
            break;
        case SNAPPY_COPY_2:
            ret = FUNC4(gb, buf, p, len, val);
            break;
        case SNAPPY_COPY_4:
            ret = FUNC5(gb, buf, p, len, val);
            break;
        }

        if (ret < 0)
            return ret;

        p   += ret;
        len -= ret;
    }

    return 0;
}