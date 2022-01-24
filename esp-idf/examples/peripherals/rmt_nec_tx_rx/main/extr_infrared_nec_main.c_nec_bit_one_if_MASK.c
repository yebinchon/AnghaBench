#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ level0; scalar_t__ level1; int /*<<< orphan*/  duration1; int /*<<< orphan*/  duration0; } ;
typedef  TYPE_1__ rmt_item32_t ;

/* Variables and functions */
 int /*<<< orphan*/  NEC_BIT_MARGIN ; 
 int /*<<< orphan*/  NEC_BIT_ONE_HIGH_US ; 
 int /*<<< orphan*/  NEC_BIT_ONE_LOW_US ; 
 scalar_t__ RMT_RX_ACTIVE_LEVEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC1(rmt_item32_t* item)
{
    if((item->level0 == RMT_RX_ACTIVE_LEVEL && item->level1 != RMT_RX_ACTIVE_LEVEL)
        && FUNC0(item->duration0, NEC_BIT_ONE_HIGH_US, NEC_BIT_MARGIN)
        && FUNC0(item->duration1, NEC_BIT_ONE_LOW_US, NEC_BIT_MARGIN)) {
        return true;
    }
    return false;
}