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
typedef  int /*<<< orphan*/  malloc_zone_t ;

/* Variables and functions */
 int /*<<< orphan*/  config_prof ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 scalar_t__ FUNC1 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 

__attribute__((used)) static void
FUNC3(malloc_zone_t *zone, void *ptr)
{

	if (FUNC1(ptr, config_prof) != 0) {
		FUNC2(ptr);
		return;
	}

	FUNC0(ptr);
}