#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int numlines; size_t firstline; TYPE_3__* sector; } ;
typedef  TYPE_1__ subsector_t ;
typedef  int /*<<< orphan*/  seg_t ;
struct TYPE_6__ {scalar_t__ floorheight; scalar_t__ floorpic; scalar_t__ ceilingheight; scalar_t__ ceilingpic; int /*<<< orphan*/  lightlevel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 void* FUNC3 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ceilingplane ; 
 int /*<<< orphan*/ * floorplane ; 
 TYPE_3__* frontsector ; 
 int numsubsectors ; 
 int /*<<< orphan*/ * segs ; 
 scalar_t__ skyflatnum ; 
 int /*<<< orphan*/  sscount ; 
 TYPE_1__* subsectors ; 
 scalar_t__ viewz ; 

void FUNC4 (int num)
{
    int			count;
    seg_t*		line;
    subsector_t*	sub;
	
#ifdef RANGECHECK
    if (num>=numsubsectors)
	I_Error ("R_Subsector: ss %i with numss = %i",
		 num,
		 numsubsectors);
#endif

    sscount++;
    sub = &subsectors[num];
    frontsector = sub->sector;
    count = sub->numlines;
    line = &segs[sub->firstline];

    if (frontsector->floorheight < viewz)
    {
	floorplane = FUNC3 (frontsector->floorheight,
				  frontsector->floorpic,
				  frontsector->lightlevel);
    }
    else
	floorplane = NULL;
    
    if (frontsector->ceilingheight > viewz 
	|| frontsector->ceilingpic == skyflatnum)
    {
	ceilingplane = FUNC3 (frontsector->ceilingheight,
				    frontsector->ceilingpic,
				    frontsector->lightlevel);
    }
    else
	ceilingplane = NULL;
		
    FUNC2 (frontsector);	

    while (count--)
    {
	FUNC1 (line);
	line++;
    }
}