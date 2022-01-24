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
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int) ; 

__attribute__((used)) static inline uint8_t FUNC3(GetBitContext *gb, uint8_t lru[8],
                                     int bits)
{
    uint8_t c, val;

    c = FUNC1(gb, 0, bits);
    if (!c) {
        val = FUNC0(gb, bits);
        FUNC2(lru + 1, lru, sizeof(*lru) * (6 - 1));
    } else {
        val = lru[c - 1];
        FUNC2(lru + 1, lru, sizeof(*lru) * (c - 1));
    }
    lru[0] = val;

    return val;
}