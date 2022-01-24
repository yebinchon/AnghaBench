#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int floorheight; int /*<<< orphan*/  tag; int /*<<< orphan*/  ceilingheight; TYPE_3__* specialdata; } ;
typedef  TYPE_2__ sector_t ;
typedef  int /*<<< orphan*/  line_t ;
struct TYPE_9__ {scalar_t__ acp1; } ;
struct TYPE_12__ {TYPE_1__ function; } ;
struct TYPE_11__ {int crush; int bottomheight; int direction; int speed; int type; int /*<<< orphan*/  tag; int /*<<< orphan*/  topheight; TYPE_2__* sector; TYPE_7__ thinker; } ;
typedef  TYPE_3__ ceiling_t ;
typedef  int ceiling_e ;
typedef  scalar_t__ actionf_p1 ;

/* Variables and functions */
 int CEILSPEED ; 
 int FRACUNIT ; 
 int /*<<< orphan*/  PU_LEVSPEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ T_MoveCeiling ; 
 TYPE_3__* FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  crushAndRaise 133 
#define  fastCrushAndRaise 132 
#define  lowerAndCrush 131 
#define  lowerToFloor 130 
#define  raiseToHighest 129 
 TYPE_2__* sectors ; 
#define  silentCrushAndRaise 128 

int
FUNC6
( line_t*	line,
  ceiling_e	type )
{
    int		secnum;
    int		rtn;
    sector_t*	sec;
    ceiling_t*	ceiling;
	
    secnum = -1;
    rtn = 0;
    
    //	Reactivate in-stasis ceilings...for certain types.
    switch(type)
    {
      case fastCrushAndRaise:
      case silentCrushAndRaise:
      case crushAndRaise:
	FUNC0(line);
      default:
	break;
    }
	
    while ((secnum = FUNC4(line,secnum)) >= 0)
    {
	sec = &sectors[secnum];
	if (sec->specialdata)
	    continue;
	
	// new door thinker
	rtn = 1;
	ceiling = FUNC5 (sizeof(*ceiling), PU_LEVSPEC, 0);
	FUNC2 (&ceiling->thinker);
	sec->specialdata = ceiling;
	ceiling->thinker.function.acp1 = (actionf_p1)T_MoveCeiling;
	ceiling->sector = sec;
	ceiling->crush = false;
	
	switch(type)
	{
	  case fastCrushAndRaise:
	    ceiling->crush = true;
	    ceiling->topheight = sec->ceilingheight;
	    ceiling->bottomheight = sec->floorheight + (8*FRACUNIT);
	    ceiling->direction = -1;
	    ceiling->speed = CEILSPEED * 2;
	    break;

	  case silentCrushAndRaise:
	  case crushAndRaise:
	    ceiling->crush = true;
	    ceiling->topheight = sec->ceilingheight;
	  case lowerAndCrush:
	  case lowerToFloor:
	    ceiling->bottomheight = sec->floorheight;
	    if (type != lowerToFloor)
		ceiling->bottomheight += 8*FRACUNIT;
	    ceiling->direction = -1;
	    ceiling->speed = CEILSPEED;
	    break;

	  case raiseToHighest:
	    ceiling->topheight = FUNC3(sec);
	    ceiling->direction = 1;
	    ceiling->speed = CEILSPEED;
	    break;
	}
		
	ceiling->tag = sec->tag;
	ceiling->type = type;
	FUNC1(ceiling);
    }
    return rtn;
}