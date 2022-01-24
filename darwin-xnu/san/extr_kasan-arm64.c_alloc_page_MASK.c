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
 scalar_t__ ARM_PGBYTES ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  shadow_pages_used ; 
 uintptr_t shadow_pnext ; 
 scalar_t__ shadow_ptop ; 

__attribute__((used)) static uintptr_t
FUNC1(void)
{
	if (shadow_pnext + ARM_PGBYTES >= shadow_ptop) {
		FUNC0("KASAN: OOM");
	}

	uintptr_t mem = shadow_pnext;
	shadow_pnext += ARM_PGBYTES;
	shadow_pages_used++;

	return mem;
}