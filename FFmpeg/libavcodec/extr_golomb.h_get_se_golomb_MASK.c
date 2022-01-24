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
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (unsigned int) ; 
 int* ff_golomb_vlc_len ; 
 int* ff_se_golomb_vlc_code ; 
 int /*<<< orphan*/  re ; 
 unsigned int FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline int FUNC8(GetBitContext *gb)
{
    unsigned int buf;

#if CACHED_BITSTREAM_READER
    buf = show_bits_long(gb, 32);

    if (buf >= (1 << 27)) {
        buf >>= 32 - 9;
        skip_bits_long(gb, ff_golomb_vlc_len[buf]);

        return ff_se_golomb_vlc_code[buf];
    } else {
        int log = 2 * av_log2(buf) - 31;
        buf >>= log;

        skip_bits_long(gb, 32 - log);

        if (buf & 1)
            buf = -(buf >> 1);
        else
            buf = (buf >> 1);

        return buf;
    }
#else
    FUNC3(re, gb);
    FUNC4(re, gb);
    buf = FUNC1(re, gb);

    if (buf >= (1 << 27)) {
        buf >>= 32 - 9;
        FUNC2(re, gb, ff_golomb_vlc_len[buf]);
        FUNC0(re, gb);

        return ff_se_golomb_vlc_code[buf];
    } else {
        int log = FUNC5(buf), sign;
        FUNC2(re, gb, 31 - log);
        FUNC4(re, gb);
        buf = FUNC1(re, gb);

        buf >>= log;

        FUNC2(re, gb, 32 - log);
        FUNC0(re, gb);

        sign = -(buf & 1);
        buf  = ((buf >> 1) ^ sign) - sign;

        return buf;
    }
#endif
}