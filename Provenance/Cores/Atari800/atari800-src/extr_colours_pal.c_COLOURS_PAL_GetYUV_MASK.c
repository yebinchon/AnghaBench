#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ loaded; } ;

/* Variables and functions */
 TYPE_1__ COLOURS_PAL_external ; 
 int /*<<< orphan*/  FUNC0 (double*) ; 
 int /*<<< orphan*/  FUNC1 (double*) ; 

void FUNC2(double yuv_table[256*5])
{
	if (COLOURS_PAL_external.loaded)
		FUNC0(yuv_table);
	else
		FUNC1(yuv_table);
}