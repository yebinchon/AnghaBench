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
typedef  int /*<<< orphan*/  PutBitContext ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC4(PutBitContext *pb, GetBitContext *gb)
{
    int five_bit_ch, four_bit_ch, comment_size, bits;
    int offset = FUNC3(pb);

    FUNC2(pb, gb, 10);               // Tag, Object Type, Frequency
    five_bit_ch  = FUNC2(pb, gb, 4); // Front
    five_bit_ch += FUNC2(pb, gb, 4); // Side
    five_bit_ch += FUNC2(pb, gb, 4); // Back
    four_bit_ch  = FUNC2(pb, gb, 2); // LFE
    four_bit_ch += FUNC2(pb, gb, 3); // Data
    five_bit_ch += FUNC2(pb, gb, 4); // Coupling
    if (FUNC2(pb, gb, 1))            // Mono Mixdown
        FUNC2(pb, gb, 4);
    if (FUNC2(pb, gb, 1))            // Stereo Mixdown
        FUNC2(pb, gb, 4);
    if (FUNC2(pb, gb, 1))            // Matrix Mixdown
        FUNC2(pb, gb, 3);
    for (bits = five_bit_ch*5+four_bit_ch*4; bits > 16; bits -= 16)
        FUNC2(pb, gb, 16);
    if (bits)
        FUNC2(pb, gb, bits);
    FUNC1(pb);
    FUNC0(gb);
    comment_size = FUNC2(pb, gb, 8);
    for (; comment_size > 0; comment_size--)
        FUNC2(pb, gb, 8);

    return FUNC3(pb) - offset;
}