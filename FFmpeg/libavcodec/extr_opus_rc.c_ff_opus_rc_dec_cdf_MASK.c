#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int uint32_t ;
typedef  unsigned int uint16_t ;
struct TYPE_4__ {unsigned int range; unsigned int value; } ;
typedef  TYPE_1__ OpusRangeCoder ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,unsigned int,unsigned int,unsigned int,unsigned int) ; 

uint32_t FUNC2(OpusRangeCoder *rc, const uint16_t *cdf)
{
    unsigned int k, scale, total, symbol, low, high;

    total = *cdf++;

    scale   = rc->range / total;
    symbol = rc->value / scale + 1;
    symbol = total - FUNC0(symbol, total);

    for (k = 0; cdf[k] <= symbol; k++);
    high = cdf[k];
    low  = k ? cdf[k-1] : 0;

    FUNC1(rc, scale, low, high, total);

    return k;
}