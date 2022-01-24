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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  min_period_pet_abstime ; 
 int /*<<< orphan*/  min_period_pet_bg_abstime ; 

__attribute__((used)) static uint64_t
FUNC1(void)
{
	if (FUNC0()) {
		return min_period_pet_bg_abstime;
	} else {
		return min_period_pet_abstime;
	}
}