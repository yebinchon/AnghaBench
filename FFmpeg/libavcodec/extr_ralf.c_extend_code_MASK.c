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
 unsigned int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC2(GetBitContext *gb, int val, int range, int bits)
{
    if (val == 0) {
        val = -range - FUNC1(gb);
    } else if (val == range * 2) {
        val =  range + FUNC1(gb);
    } else {
        val -= range;
    }
    if (bits)
        val = ((unsigned)val << bits) | FUNC0(gb, bits);
    return val;
}