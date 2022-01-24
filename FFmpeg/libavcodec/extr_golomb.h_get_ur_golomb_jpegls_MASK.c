#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ size_in_bits; } ;
typedef  int SUINT ;
typedef  TYPE_1__ GetBitContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int MIN_CACHE_BITS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (unsigned int) ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 
 scalar_t__ FUNC10 (TYPE_1__*) ; 
 unsigned int FUNC11 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  re ; 
 scalar_t__ re_index ; 
 unsigned int FUNC12 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int) ; 

__attribute__((used)) static inline int FUNC14(GetBitContext *gb, int k, int limit,
                                       int esc_len)
{
    unsigned int buf;
    int log;

#if CACHED_BITSTREAM_READER
    buf = show_bits_long(gb, 32);

    log = av_log2(buf);

    if (log - k >= 1 && 32 - log < limit) {
        buf >>= log - k;
        buf  += (30 - log) << k;
        skip_bits_long(gb, 32 + k - log);

        return buf;
    } else {
        int i;
        for (i = 0;
             i < limit && get_bits1(gb) == 0 && get_bits_left(gb) > 0;
             i++);

        if (i < limit - 1) {
            buf = get_bits_long(gb, k);

            return buf + (i << k);
        } else if (i == limit - 1) {
            buf = get_bits_long(gb, esc_len);

            return buf + 1;
        } else
            return -1;
    }
#else
    FUNC3(re, gb);
    FUNC6(re, gb);
    buf = FUNC1(re, gb);

    log = FUNC8(buf);

    FUNC7(k <= 31);

    if (log - k >= 32 - MIN_CACHE_BITS + (MIN_CACHE_BITS == 32) &&
        32 - log < limit) {
        buf >>= log - k;
        buf  += (30U - log) << k;
        FUNC2(re, gb, 32 + k - log);
        FUNC0(re, gb);

        return buf;
    } else {
        int i;
        for (i = 0; i + MIN_CACHE_BITS <= limit && FUNC4(re, gb, MIN_CACHE_BITS) == 0; i += MIN_CACHE_BITS) {
            if (gb->size_in_bits <= re_index) {
                FUNC0(re, gb);
                return -1;
            }
            FUNC2(re, gb, MIN_CACHE_BITS);
            FUNC6(re, gb);
        }
        for (; i < limit && FUNC4(re, gb, 1) == 0; i++) {
            FUNC5(re, gb, 1);
        }
        FUNC2(re, gb, 1);
        FUNC6(re, gb);

        if (i < limit - 1) {
            if (k) {
                if (k > MIN_CACHE_BITS - 1) {
                    buf = FUNC4(re, gb, 16) << (k-16);
                    FUNC2(re, gb, 16);
                    FUNC6(re, gb);
                    buf |= FUNC4(re, gb, k-16);
                    FUNC2(re, gb, k-16);
                } else {
                    buf = FUNC4(re, gb, k);
                    FUNC2(re, gb, k);
                }
            } else {
                buf = 0;
            }

            buf += ((SUINT)i << k);
        } else if (i == limit - 1) {
            buf = FUNC4(re, gb, esc_len);
            FUNC2(re, gb, esc_len);

            buf ++;
        } else {
            buf = -1;
        }
        FUNC0(re, gb);
        return buf;
    }
#endif
}