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
 int gp2x_current_bpp ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 

void FUNC1(int bpp, int is_pal)
{
	FUNC0(bpp, is_pal);

	gp2x_current_bpp = bpp < 0 ? -bpp : bpp;
}