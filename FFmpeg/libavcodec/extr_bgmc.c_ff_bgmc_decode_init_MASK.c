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
 int AVERROR_INVALIDDATA ; 
 unsigned int TOP_VALUE ; 
 scalar_t__ VALUE_BITS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 

int FUNC2(GetBitContext *gb, unsigned int *h,
                         unsigned int *l, unsigned int *v)
{
    if (FUNC0(gb) < VALUE_BITS)
        return AVERROR_INVALIDDATA;

    *h = TOP_VALUE;
    *l = 0;
    *v = FUNC1(gb, VALUE_BITS);

    return 0;
}