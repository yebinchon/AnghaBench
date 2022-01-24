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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * ff_golomb_vlc_len ; 
 int* ff_ue_golomb_vlc_code ; 
 int /*<<< orphan*/  re ; 
 unsigned int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC7(GetBitContext *gb)
{
    unsigned int buf;

#if CACHED_BITSTREAM_READER
    buf = show_bits_long(gb, 32);

    buf >>= 32 - 9;
    skip_bits_long(gb, ff_golomb_vlc_len[buf]);
#else

    FUNC3(re, gb);
    FUNC4(re, gb);
    buf = FUNC1(re, gb);

    buf >>= 32 - 9;
    FUNC2(re, gb, ff_golomb_vlc_len[buf]);
    FUNC0(re, gb);
#endif

    return ff_ue_golomb_vlc_code[buf];
}