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
struct TYPE_4__ {scalar_t__ oldval; scalar_t__* val; int x; int y; TYPE_2__* p; scalar_t__* on; } ;
typedef  TYPE_1__ st_binicon_t ;
typedef  scalar_t__ boolean ;
struct TYPE_5__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  topoffset; int /*<<< orphan*/  leftoffset; } ;

/* Variables and functions */
 int /*<<< orphan*/  BG ; 
 int /*<<< orphan*/  FG ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int ST_Y ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int /*<<< orphan*/ ,TYPE_2__*) ; 

void
FUNC4
( st_binicon_t*		bi,
  boolean		refresh )
{
    int			x;
    int			y;
    int			w;
    int			h;

    if (*bi->on
	&& (bi->oldval != *bi->val || refresh))
    {
	x = bi->x - FUNC1(bi->p->leftoffset);
	y = bi->y - FUNC1(bi->p->topoffset);
	w = FUNC1(bi->p->width);
	h = FUNC1(bi->p->height);

	if (y - ST_Y < 0)
	    FUNC0("updateBinIcon: y - ST_Y < 0");

	if (*bi->val)
	    FUNC3(bi->x, bi->y, FG, bi->p);
	else
	    FUNC2(x, y-ST_Y, BG, w, h, x, y, FG);

	bi->oldval = *bi->val;
    }

}