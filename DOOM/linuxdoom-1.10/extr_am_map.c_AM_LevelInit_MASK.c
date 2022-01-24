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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 double FRACUNIT ; 
 void* FUNC2 (double,int) ; 
 int /*<<< orphan*/  f_h ; 
 int /*<<< orphan*/  f_w ; 
 scalar_t__ f_x ; 
 scalar_t__ f_y ; 
 int /*<<< orphan*/  finit_height ; 
 int /*<<< orphan*/  finit_width ; 
 scalar_t__ leveljuststarted ; 
 int max_scale_mtof ; 
 double min_scale_mtof ; 
 void* scale_ftom ; 
 int scale_mtof ; 

void FUNC3(void)
{
    leveljuststarted = 0;

    f_x = f_y = 0;
    f_w = finit_width;
    f_h = finit_height;

    FUNC0();

    FUNC1();
    scale_mtof = FUNC2(min_scale_mtof, (int) (0.7*FRACUNIT));
    if (scale_mtof > max_scale_mtof)
	scale_mtof = min_scale_mtof;
    scale_ftom = FUNC2(FRACUNIT, scale_mtof);
}