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
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (unsigned int) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  re ; 
 unsigned int FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline int FUNC10(GetBitContext *gb, int k, int limit,
                                int esc_len)
{
    unsigned int buf;
    int log;

#if CACHED_BITSTREAM_READER
    buf = show_bits_long(gb, 32);

    log = av_log2(buf);

    if (log > 31 - limit) {
        buf >>= log - k;
        buf  += (30 - log) << k;
        skip_bits_long(gb, 32 + k - log);

        return buf;
    } else {
        skip_bits_long(gb, limit);
        buf = get_bits_long(gb, esc_len);

        return buf + limit - 1;
    }
#else
    FUNC3(re, gb);
    FUNC5(re, gb);
    buf = FUNC1(re, gb);

    log = FUNC6(buf);

    if (log > 31 - limit) {
        buf >>= log - k;
        buf  += (30U - log) << k;
        FUNC2(re, gb, 32 + k - log);
        FUNC0(re, gb);

        return buf;
    } else {
        FUNC2(re, gb, limit);
        FUNC5(re, gb);

        buf = FUNC4(re, gb, esc_len);

        FUNC2(re, gb, esc_len);
        FUNC0(re, gb);

        return buf + limit - 1;
    }
#endif
}