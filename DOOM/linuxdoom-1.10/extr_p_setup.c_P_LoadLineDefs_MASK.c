#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ x; scalar_t__ y; } ;
typedef  TYPE_1__ vertex_t ;
struct TYPE_10__ {int /*<<< orphan*/ * sidenum; int /*<<< orphan*/  v2; int /*<<< orphan*/  v1; int /*<<< orphan*/  tag; int /*<<< orphan*/  special; int /*<<< orphan*/  flags; } ;
typedef  TYPE_2__ maplinedef_t ;
struct TYPE_11__ {size_t flags; size_t special; size_t tag; scalar_t__ dx; scalar_t__ dy; scalar_t__* bbox; size_t* sidenum; scalar_t__ backsector; scalar_t__ frontsector; int /*<<< orphan*/  slopetype; TYPE_1__* v2; TYPE_1__* v1; } ;
typedef  TYPE_3__ line_t ;
typedef  int /*<<< orphan*/  byte ;
struct TYPE_12__ {scalar_t__ sector; } ;

/* Variables and functions */
 size_t BOXBOTTOM ; 
 size_t BOXLEFT ; 
 size_t BOXRIGHT ; 
 size_t BOXTOP ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  PU_LEVEL ; 
 int /*<<< orphan*/  PU_STATIC ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ST_HORIZONTAL ; 
 int /*<<< orphan*/  ST_NEGATIVE ; 
 int /*<<< orphan*/  ST_POSITIVE ; 
 int /*<<< orphan*/  ST_VERTICAL ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* lines ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int numlines ; 
 TYPE_5__* sides ; 
 TYPE_1__* vertexes ; 

void FUNC7 (int lump)
{
    byte*		data;
    int			i;
    maplinedef_t*	mld;
    line_t*		ld;
    vertex_t*		v1;
    vertex_t*		v2;
	
    numlines = FUNC3 (lump) / sizeof(maplinedef_t);
    lines = FUNC5 (numlines*sizeof(line_t),PU_LEVEL,0);	
    FUNC6 (lines, 0, numlines*sizeof(line_t));
    data = FUNC2 (lump,PU_STATIC);
	
    mld = (maplinedef_t *)data;
    ld = lines;
    for (i=0 ; i<numlines ; i++, mld++, ld++)
    {
	ld->flags = FUNC1(mld->flags);
	ld->special = FUNC1(mld->special);
	ld->tag = FUNC1(mld->tag);
	v1 = ld->v1 = &vertexes[FUNC1(mld->v1)];
	v2 = ld->v2 = &vertexes[FUNC1(mld->v2)];
	ld->dx = v2->x - v1->x;
	ld->dy = v2->y - v1->y;
	
	if (!ld->dx)
	    ld->slopetype = ST_VERTICAL;
	else if (!ld->dy)
	    ld->slopetype = ST_HORIZONTAL;
	else
	{
	    if (FUNC0 (ld->dy , ld->dx) > 0)
		ld->slopetype = ST_POSITIVE;
	    else
		ld->slopetype = ST_NEGATIVE;
	}
		
	if (v1->x < v2->x)
	{
	    ld->bbox[BOXLEFT] = v1->x;
	    ld->bbox[BOXRIGHT] = v2->x;
	}
	else
	{
	    ld->bbox[BOXLEFT] = v2->x;
	    ld->bbox[BOXRIGHT] = v1->x;
	}

	if (v1->y < v2->y)
	{
	    ld->bbox[BOXBOTTOM] = v1->y;
	    ld->bbox[BOXTOP] = v2->y;
	}
	else
	{
	    ld->bbox[BOXBOTTOM] = v2->y;
	    ld->bbox[BOXTOP] = v1->y;
	}

	ld->sidenum[0] = FUNC1(mld->sidenum[0]);
	ld->sidenum[1] = FUNC1(mld->sidenum[1]);

	if (ld->sidenum[0] != -1)
	    ld->frontsector = sides[ld->sidenum[0]].sector;
	else
	    ld->frontsector = 0;

	if (ld->sidenum[1] != -1)
	    ld->backsector = sides[ld->sidenum[1]].sector;
	else
	    ld->backsector = 0;
    }
	
    FUNC4 (data);
}