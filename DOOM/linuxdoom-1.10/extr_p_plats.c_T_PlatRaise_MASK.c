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
typedef  int /*<<< orphan*/  result_e ;
struct TYPE_5__ {int status; int crush; int type; TYPE_3__* sector; int /*<<< orphan*/  low; int /*<<< orphan*/  count; int /*<<< orphan*/  wait; int /*<<< orphan*/  speed; int /*<<< orphan*/  high; } ;
typedef  TYPE_1__ plat_t ;
typedef  int /*<<< orphan*/  mobj_t ;
struct TYPE_6__ {int /*<<< orphan*/  soundorg; int /*<<< orphan*/  floorheight; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
#define  blazeDWUS 135 
 int /*<<< orphan*/  crushed ; 
#define  down 134 
#define  downWaitUpStay 133 
#define  in_stasis 132 
 int leveltime ; 
 int /*<<< orphan*/  pastdest ; 
#define  raiseAndChange 131 
#define  raiseToNearestAndChange 130 
 int /*<<< orphan*/  sfx_pstart ; 
 int /*<<< orphan*/  sfx_pstop ; 
 int /*<<< orphan*/  sfx_stnmov ; 
#define  up 129 
#define  waiting 128 

void FUNC3(plat_t* plat)
{
    result_e	res;
	
    switch(plat->status)
    {
      case up:
	res = FUNC2(plat->sector,
			  plat->speed,
			  plat->high,
			  plat->crush,0,1);
					
	if (plat->type == raiseAndChange
	    || plat->type == raiseToNearestAndChange)
	{
	    if (!(leveltime&7))
		FUNC1((mobj_t *)&plat->sector->soundorg,
			     sfx_stnmov);
	}
	
				
	if (res == crushed && (!plat->crush))
	{
	    plat->count = plat->wait;
	    plat->status = down;
	    FUNC1((mobj_t *)&plat->sector->soundorg,
			 sfx_pstart);
	}
	else
	{
	    if (res == pastdest)
	    {
		plat->count = plat->wait;
		plat->status = waiting;
		FUNC1((mobj_t *)&plat->sector->soundorg,
			     sfx_pstop);

		switch(plat->type)
		{
		  case blazeDWUS:
		  case downWaitUpStay:
		    FUNC0(plat);
		    break;
		    
		  case raiseAndChange:
		  case raiseToNearestAndChange:
		    FUNC0(plat);
		    break;
		    
		  default:
		    break;
		}
	    }
	}
	break;
	
      case	down:
	res = FUNC2(plat->sector,plat->speed,plat->low,false,0,-1);

	if (res == pastdest)
	{
	    plat->count = plat->wait;
	    plat->status = waiting;
	    FUNC1((mobj_t *)&plat->sector->soundorg,sfx_pstop);
	}
	break;
	
      case	waiting:
	if (!--plat->count)
	{
	    if (plat->sector->floorheight == plat->low)
		plat->status = up;
	    else
		plat->status = down;
	    FUNC1((mobj_t *)&plat->sector->soundorg,sfx_pstart);
	}
      case	in_stasis:
	break;
    }
}