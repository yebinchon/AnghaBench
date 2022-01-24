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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ) ; 

void FUNC1(OpusRangeCoder *rc, uint32_t k, int qn)
{
    uint32_t symbol, low, total;

    total = ((qn>>1) + 1) * ((qn>>1) + 1);

    if (k <= qn >> 1) {
        low    = k * (k + 1) >> 1;
        symbol = k + 1;
    } else {
        low    = total - ((qn + 1 - k) * (qn + 2 - k) >> 1);
        symbol = qn + 1 - k;
    }

    FUNC0(rc, low, low + symbol, total, 0);
}