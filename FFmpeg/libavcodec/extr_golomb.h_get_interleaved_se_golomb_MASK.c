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
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int INVALID_VLC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int* ff_interleaved_golomb_vlc_len ; 
 int* ff_interleaved_se_golomb_vlc_code ; 
 int /*<<< orphan*/  re ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline int FUNC8(GetBitContext *gb)
{
    unsigned int buf;

#if CACHED_BITSTREAM_READER
    buf = show_bits_long(gb, 32);

    if (buf & 0xAA800000) {
        buf >>= 32 - 8;
        skip_bits_long(gb, ff_interleaved_golomb_vlc_len[buf]);

        return ff_interleaved_se_golomb_vlc_code[buf];
    } else {
        int log;
        skip_bits(gb, 8);
        buf |= 1 | show_bits_long(gb, 24);

        if ((buf & 0xAAAAAAAA) == 0)
            return INVALID_VLC;

        for (log = 31; (buf & 0x80000000) == 0; log--)
            buf = (buf << 2) - ((buf << log) >> (log - 1)) + (buf >> 30);

        skip_bits_long(gb, 63 - 2 * log - 8);

        return (signed) (((((buf << log) >> log) - 1) ^ -(buf & 0x1)) + 1) >> 1;
    }
#else
    FUNC3(re, gb);
    FUNC4(re, gb);
    buf = FUNC1(re, gb);

    if (buf & 0xAA800000) {
        buf >>= 32 - 8;
        FUNC2(re, gb, ff_interleaved_golomb_vlc_len[buf]);
        FUNC0(re, gb);

        return ff_interleaved_se_golomb_vlc_code[buf];
    } else {
        int log;
        FUNC2(re, gb, 8);
        FUNC4(re, gb);
        buf |= 1 | (FUNC1(re, gb) >> 8);

        if ((buf & 0xAAAAAAAA) == 0)
            return INVALID_VLC;

        for (log = 31; (buf & 0x80000000) == 0; log--)
            buf = (buf << 2) - ((buf << log) >> (log - 1)) + (buf >> 30);

        FUNC2(re, gb, 63 - 2 * log - 8);
        FUNC0(re, gb);

        return (signed) (((((buf << log) >> log) - 1) ^ -(buf & 0x1)) + 1) >> 1;
    }
#endif
}