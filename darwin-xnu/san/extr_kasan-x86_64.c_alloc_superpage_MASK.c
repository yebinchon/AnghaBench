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
 uintptr_t I386_LPGBYTES ; 
 uintptr_t I386_LPGMASK ; 
 uintptr_t I386_PGBYTES ; 
 uintptr_t FUNC0 (uintptr_t) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 uintptr_t shadow_pages_used ; 
 uintptr_t shadow_pnext ; 

__attribute__((used)) static uintptr_t
FUNC2(void)
{
	uintptr_t mem;
	shadow_pnext = FUNC0(shadow_pnext);
	FUNC1((shadow_pnext & I386_LPGMASK) == 0);
	mem = shadow_pnext;
	shadow_pnext += I386_LPGBYTES;
	shadow_pages_used += I386_LPGBYTES / I386_PGBYTES;
	/* XXX: not accounting for superpage rounding */
	return mem;
}