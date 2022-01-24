#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_13__ ;

/* Type definitions */
struct TYPE_19__ {int /*<<< orphan*/  soundorg; void* floorheight; int /*<<< orphan*/  floorpic; int /*<<< orphan*/  special; TYPE_4__* specialdata; } ;
typedef  TYPE_3__ sector_t ;
typedef  int plattype_e ;
struct TYPE_17__ {scalar_t__ acp1; } ;
struct TYPE_16__ {TYPE_1__ function; } ;
struct TYPE_20__ {int type; int crush; int speed; int wait; int status; void* high; void* low; int /*<<< orphan*/  tag; TYPE_13__ thinker; TYPE_3__* sector; } ;
typedef  TYPE_4__ plat_t ;
typedef  int /*<<< orphan*/  mobj_t ;
struct TYPE_21__ {size_t* sidenum; int /*<<< orphan*/  tag; } ;
typedef  TYPE_5__ line_t ;
typedef  scalar_t__ actionf_p1 ;
struct TYPE_22__ {TYPE_2__* sector; } ;
struct TYPE_18__ {int /*<<< orphan*/  floorpic; } ;

/* Variables and functions */
 int FRACUNIT ; 
 int PLATSPEED ; 
 int PLATWAIT ; 
 int /*<<< orphan*/  PU_LEVSPEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_13__*) ; 
 void* FUNC3 (TYPE_3__*) ; 
 void* FUNC4 (TYPE_3__*) ; 
 void* FUNC5 (TYPE_3__*,void*) ; 
 int FUNC6 (TYPE_5__*,int) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ T_PlatRaise ; 
 TYPE_4__* FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  blazeDWUS 132 
 void* down ; 
#define  downWaitUpStay 131 
#define  perpetualRaise 130 
#define  raiseAndChange 129 
#define  raiseToNearestAndChange 128 
 TYPE_3__* sectors ; 
 int /*<<< orphan*/  sfx_pstart ; 
 int /*<<< orphan*/  sfx_stnmov ; 
 TYPE_6__* sides ; 
 void* up ; 

int
FUNC10
( line_t*	line,
  plattype_e	type,
  int		amount )
{
    plat_t*	plat;
    int		secnum;
    int		rtn;
    sector_t*	sec;
	
    secnum = -1;
    rtn = 0;

    
    //	Activate all <type> plats that are in_stasis
    switch(type)
    {
      case perpetualRaise:
	FUNC0(line->tag);
	break;
	
      default:
	break;
    }
	
    while ((secnum = FUNC6(line,secnum)) >= 0)
    {
	sec = &sectors[secnum];

	if (sec->specialdata)
	    continue;
	
	// Find lowest & highest floors around sector
	rtn = 1;
	plat = FUNC9( sizeof(*plat), PU_LEVSPEC, 0);
	FUNC2(&plat->thinker);
		
	plat->type = type;
	plat->sector = sec;
	plat->sector->specialdata = plat;
	plat->thinker.function.acp1 = (actionf_p1) T_PlatRaise;
	plat->crush = false;
	plat->tag = line->tag;
	
	switch(type)
	{
	  case raiseToNearestAndChange:
	    plat->speed = PLATSPEED/2;
	    sec->floorpic = sides[line->sidenum[0]].sector->floorpic;
	    plat->high = FUNC5(sec,sec->floorheight);
	    plat->wait = 0;
	    plat->status = up;
	    // NO MORE DAMAGE, IF APPLICABLE
	    sec->special = 0;		

	    FUNC8((mobj_t *)&sec->soundorg,sfx_stnmov);
	    break;
	    
	  case raiseAndChange:
	    plat->speed = PLATSPEED/2;
	    sec->floorpic = sides[line->sidenum[0]].sector->floorpic;
	    plat->high = sec->floorheight + amount*FRACUNIT;
	    plat->wait = 0;
	    plat->status = up;

	    FUNC8((mobj_t *)&sec->soundorg,sfx_stnmov);
	    break;
	    
	  case downWaitUpStay:
	    plat->speed = PLATSPEED * 4;
	    plat->low = FUNC4(sec);

	    if (plat->low > sec->floorheight)
		plat->low = sec->floorheight;

	    plat->high = sec->floorheight;
	    plat->wait = 35*PLATWAIT;
	    plat->status = down;
	    FUNC8((mobj_t *)&sec->soundorg,sfx_pstart);
	    break;
	    
	  case blazeDWUS:
	    plat->speed = PLATSPEED * 8;
	    plat->low = FUNC4(sec);

	    if (plat->low > sec->floorheight)
		plat->low = sec->floorheight;

	    plat->high = sec->floorheight;
	    plat->wait = 35*PLATWAIT;
	    plat->status = down;
	    FUNC8((mobj_t *)&sec->soundorg,sfx_pstart);
	    break;
	    
	  case perpetualRaise:
	    plat->speed = PLATSPEED;
	    plat->low = FUNC4(sec);

	    if (plat->low > sec->floorheight)
		plat->low = sec->floorheight;

	    plat->high = FUNC3(sec);

	    if (plat->high < sec->floorheight)
		plat->high = sec->floorheight;

	    plat->wait = 35*PLATWAIT;
	    plat->status = FUNC7()&1;

	    FUNC8((mobj_t *)&sec->soundorg,sfx_pstart);
	    break;
	}
	FUNC1(plat);
    }
    return rtn;
}