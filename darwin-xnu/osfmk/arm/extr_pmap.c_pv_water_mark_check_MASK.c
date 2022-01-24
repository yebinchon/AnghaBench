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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mapping_replenish_event ; 
 int /*<<< orphan*/  mappingrecurse ; 
 scalar_t__ pv_free_count ; 
 scalar_t__ pv_kern_free_count ; 
 scalar_t__ pv_kern_low_water_mark ; 
 scalar_t__ pv_low_water_mark ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC2(void)
{
	if ((pv_free_count < pv_low_water_mark) || (pv_kern_free_count < pv_kern_low_water_mark)) {
		if (!mappingrecurse && FUNC0(0,1, &mappingrecurse))
			FUNC1(&mapping_replenish_event);
	}
}