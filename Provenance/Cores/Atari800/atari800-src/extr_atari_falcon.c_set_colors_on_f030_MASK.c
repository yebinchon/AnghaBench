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
typedef  int /*<<< orphan*/  ULONG ;

/* Variables and functions */
 int /*<<< orphan*/ * f030_coltable_ptr ; 

void FUNC0(void)
{
	int i;
	ULONG *x = (ULONG *) 0xff9800;

	for (i = 0; i < 256; i++)
		x[i] = f030_coltable_ptr[i];
}