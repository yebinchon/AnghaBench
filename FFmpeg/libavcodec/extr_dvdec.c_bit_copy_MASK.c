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
 int MIN_CACHE_BITS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(PutBitContext *pb, GetBitContext *gb)
{
    int bits_left = FUNC1(gb);
    while (bits_left >= MIN_CACHE_BITS) {
        FUNC2(pb, MIN_CACHE_BITS, FUNC0(gb, MIN_CACHE_BITS));
        bits_left -= MIN_CACHE_BITS;
    }
    if (bits_left > 0)
        FUNC2(pb, bits_left, FUNC0(gb, bits_left));
}