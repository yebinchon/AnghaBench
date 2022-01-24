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
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ MEMORY_mem ; 
 int MEMORY_ram_size ; 
 scalar_t__ TRUE ; 
 scalar_t__ cart809F_enabled ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  under_cart809F ; 

void FUNC2(void)
{
	if (!cart809F_enabled) {
		if (MEMORY_ram_size > 32) {
			FUNC1(under_cart809F, MEMORY_mem + 0x8000, 0x2000);
			FUNC0(0x8000, 0x9fff);
		}
		cart809F_enabled = TRUE;
	}
}