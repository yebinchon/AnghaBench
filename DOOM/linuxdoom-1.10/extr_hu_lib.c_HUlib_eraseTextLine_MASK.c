#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int y; scalar_t__ needsupdate; TYPE_1__** f; } ;
typedef  TYPE_2__ hu_textline_t ;
typedef  int boolean ;
struct TYPE_4__ {int /*<<< orphan*/  height; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int SCREENWIDTH ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int automapactive ; 
 int viewheight ; 
 int viewwidth ; 
 int viewwindowx ; 
 int viewwindowy ; 

void FUNC2(hu_textline_t* l)
{
    int			lh;
    int			y;
    int			yoffset;
    static boolean	lastautomapactive = true;

    // Only erases when NOT in automap and the screen is reduced,
    // and the text must either need updating or refreshing
    // (because of a recent change back from the automap)

    if (!automapactive &&
	viewwindowx && l->needsupdate)
    {
	lh = FUNC1(l->f[0]->height) + 1;
	for (y=l->y,yoffset=y*SCREENWIDTH ; y<l->y+lh ; y++,yoffset+=SCREENWIDTH)
	{
	    if (y < viewwindowy || y >= viewwindowy + viewheight)
		FUNC0(yoffset, SCREENWIDTH); // erase entire line
	    else
	    {
		FUNC0(yoffset, viewwindowx); // erase left border
		FUNC0(yoffset + viewwindowx + viewwidth, viewwindowx);
		// erase right border
	    }
	}
    }

    lastautomapactive = automapactive;
    if (l->needsupdate) l->needsupdate--;

}