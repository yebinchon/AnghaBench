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
struct TYPE_4__ {int oldinum; int* inum; int x; int y; TYPE_2__** p; scalar_t__* on; } ;
typedef  TYPE_1__ st_multicon_t ;
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
( st_multicon_t*	mi,
  boolean		refresh )
{
    int			w;
    int			h;
    int			x;
    int			y;

    if (*mi->on
	&& (mi->oldinum != *mi->inum || refresh)
	&& (*mi->inum!=-1))
    {
	if (mi->oldinum != -1)
	{
	    x = mi->x - FUNC1(mi->p[mi->oldinum]->leftoffset);
	    y = mi->y - FUNC1(mi->p[mi->oldinum]->topoffset);
	    w = FUNC1(mi->p[mi->oldinum]->width);
	    h = FUNC1(mi->p[mi->oldinum]->height);

	    if (y - ST_Y < 0)
		FUNC0("updateMultIcon: y - ST_Y < 0");

	    FUNC2(x, y-ST_Y, BG, w, h, x, y, FG);
	}
	FUNC3(mi->x, mi->y, FG, mi->p[*mi->inum]);
	mi->oldinum = *mi->inum;
    }
}