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
typedef  int /*<<< orphan*/  OpusRangeCoder ;

/* Variables and functions */
 int FUNC0 (int) ; 
 void* FUNC1 (int,int) ; 
 int const FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int,int,int) ; 

void FUNC4(OpusRangeCoder *rc, int *value, uint32_t symbol, int decay)
{
    uint32_t low = symbol;
    int i = 1, val = FUNC0(*value), pos = *value > 0;
    if (!val) {
        FUNC3(rc, 0, symbol, 1 << 15, 1);
        return;
    }
    symbol = ((32768 - 32 - symbol)*(16384 - decay)) >> 15;
    for (; i < val && symbol; i++) {
        low   += (symbol << 1) + 2;
        symbol = (symbol*decay) >> 14;
    }
    if (symbol) {
        low += (++symbol)*pos;
    } else {
        const int distance = FUNC1(val - i, (((32768 - low) - !pos) >> 1) - 1);
        low   += pos + (distance << 1);
        symbol = FUNC1(1, 32768 - low);
        *value = FUNC2(*value)*(distance + i);
    }
    FUNC3(rc, low, low + symbol, 1 << 15, 1);
}