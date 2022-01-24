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
 int /*<<< orphan*/  FUNC0 (double*,double*) ; 
 int FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 double VIDEOMODE_host_aspect_ratio_h ; 
 double VIDEOMODE_host_aspect_ratio_w ; 

int FUNC2(double w, double h)
{
	double old_w = VIDEOMODE_host_aspect_ratio_w;
	double old_h = VIDEOMODE_host_aspect_ratio_h;
	if (w < 0.0 || h < 0.0)
		return FALSE;
	if (w == 0.0 || h == 0.0)
		FUNC0(&w, &h);
	VIDEOMODE_host_aspect_ratio_w = w;
	VIDEOMODE_host_aspect_ratio_h = h;
	if (!FUNC1()) {
		VIDEOMODE_host_aspect_ratio_w = old_w;
		VIDEOMODE_host_aspect_ratio_h = old_h;
		return FALSE;
	}
	return TRUE;
}