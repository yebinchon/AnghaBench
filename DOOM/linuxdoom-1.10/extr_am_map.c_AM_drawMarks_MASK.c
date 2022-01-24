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
struct TYPE_2__ {int x; int /*<<< orphan*/  y; } ;

/* Variables and functions */
 int AM_NUMMARKPOINTS ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FB ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int f_h ; 
 int f_w ; 
 int f_x ; 
 int f_y ; 
 int /*<<< orphan*/ * marknums ; 
 TYPE_1__* markpoints ; 

void FUNC3(void)
{
    int i, fx, fy, w, h;

    for (i=0;i<AM_NUMMARKPOINTS;i++)
    {
	if (markpoints[i].x != -1)
	{
	    //      w = SHORT(marknums[i]->width);
	    //      h = SHORT(marknums[i]->height);
	    w = 5; // because something's wrong with the wad, i guess
	    h = 6; // because something's wrong with the wad, i guess
	    fx = FUNC0(markpoints[i].x);
	    fy = FUNC1(markpoints[i].y);
	    if (fx >= f_x && fx <= f_w - w && fy >= f_y && fy <= f_h - h)
		FUNC2(fx, fy, FB, marknums[i]);
	}
    }

}