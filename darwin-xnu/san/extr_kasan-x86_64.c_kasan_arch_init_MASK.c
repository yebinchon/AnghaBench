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
 int /*<<< orphan*/  I386_LPGBYTES ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ physmap_base ; 
 scalar_t__ physmap_max ; 
 int /*<<< orphan*/  zero_superpage_phys ; 

void
FUNC3(void)
{
	FUNC0((void *)FUNC2(zero_superpage_phys), I386_LPGBYTES);

	/* Map the physical aperture */
	FUNC1(physmap_base, physmap_max - physmap_base);
}