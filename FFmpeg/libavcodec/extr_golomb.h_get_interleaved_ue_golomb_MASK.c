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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned int* ff_interleaved_dirac_golomb_vlc_code ; 
 int* ff_interleaved_golomb_vlc_len ; 
 int* ff_interleaved_ue_golomb_vlc_code ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  re ; 
 int FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline unsigned FUNC10(GetBitContext *gb)
{
    uint32_t buf;

#if CACHED_BITSTREAM_READER
    buf = show_bits_long(gb, 32);

    if (buf & 0xAA800000) {
        buf >>= 32 - 8;
        skip_bits_long(gb, ff_interleaved_golomb_vlc_len[buf]);

        return ff_interleaved_ue_golomb_vlc_code[buf];
    } else {
        unsigned ret = 1;

        do {
            buf >>= 32 - 8;
            skip_bits_long(gb, FFMIN(ff_interleaved_golomb_vlc_len[buf], 8));

            if (ff_interleaved_golomb_vlc_len[buf] != 9) {
                ret <<= (ff_interleaved_golomb_vlc_len[buf] - 1) >> 1;
                ret  |= ff_interleaved_dirac_golomb_vlc_code[buf];
                break;
            }
            ret = (ret << 4) | ff_interleaved_dirac_golomb_vlc_code[buf];
            buf = show_bits_long(gb, 32);
        } while (get_bits_left(gb) > 0);

        return ret - 1;
    }
#else
    FUNC5(re, gb);
    FUNC6(re, gb);
    buf = FUNC3(re, gb);

    if (buf & 0xAA800000) {
        buf >>= 32 - 8;
        FUNC4(re, gb, ff_interleaved_golomb_vlc_len[buf]);
        FUNC1(re, gb);

        return ff_interleaved_ue_golomb_vlc_code[buf];
    } else {
        unsigned ret = 1;

        do {
            buf >>= 32 - 8;
            FUNC4(re, gb,
                           FUNC2(ff_interleaved_golomb_vlc_len[buf], 8));

            if (ff_interleaved_golomb_vlc_len[buf] != 9) {
                ret <<= (ff_interleaved_golomb_vlc_len[buf] - 1) >> 1;
                ret  |= ff_interleaved_dirac_golomb_vlc_code[buf];
                break;
            }
            ret = (ret << 4) | ff_interleaved_dirac_golomb_vlc_code[buf];
            FUNC6(re, gb);
            buf = FUNC3(re, gb);
        } while (ret<0x8000000U && FUNC0(re, gb));

        FUNC1(re, gb);
        return ret - 1;
    }
#endif
}