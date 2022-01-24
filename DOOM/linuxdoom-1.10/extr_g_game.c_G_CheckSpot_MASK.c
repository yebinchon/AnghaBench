#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_1__* sector; } ;
typedef  TYPE_2__ subsector_t ;
typedef  int /*<<< orphan*/  mobj_t ;
struct TYPE_12__ {int x; int y; int angle; } ;
typedef  TYPE_3__ mapthing_t ;
typedef  int fixed_t ;
typedef  int boolean ;
struct TYPE_14__ {int x; int y; } ;
struct TYPE_13__ {int viewz; TYPE_5__* mo; } ;
struct TYPE_10__ {int /*<<< orphan*/  floorheight; } ;

/* Variables and functions */
 int ANG45 ; 
 int ANGLETOFINESHIFT ; 
 size_t BODYQUESIZE ; 
 int FRACBITS ; 
 int /*<<< orphan*/  MT_TFOG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/ * FUNC2 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_5__** bodyque ; 
 size_t bodyqueslot ; 
 size_t consoleplayer ; 
 int* finecosine ; 
 int* finesine ; 
 TYPE_4__* players ; 
 int /*<<< orphan*/  sfx_telept ; 

boolean
FUNC5
( int		playernum,
  mapthing_t*	mthing ) 
{ 
    fixed_t		x;
    fixed_t		y; 
    subsector_t*	ss; 
    unsigned		an; 
    mobj_t*		mo; 
    int			i;
	
    if (!players[playernum].mo)
    {
	// first spawn of level, before corpses
	for (i=0 ; i<playernum ; i++)
	    if (players[i].mo->x == mthing->x << FRACBITS
		&& players[i].mo->y == mthing->y << FRACBITS)
		return false;	
	return true;
    }
		
    x = mthing->x << FRACBITS; 
    y = mthing->y << FRACBITS; 
	 
    if (!FUNC0 (players[playernum].mo, x, y) ) 
	return false; 
 
    // flush an old corpse if needed 
    if (bodyqueslot >= BODYQUESIZE) 
	FUNC1 (bodyque[bodyqueslot%BODYQUESIZE]); 
    bodyque[bodyqueslot%BODYQUESIZE] = players[playernum].mo; 
    bodyqueslot++; 
	
    // spawn a teleport fog 
    ss = FUNC3 (x,y); 
    an = ( ANG45 * (mthing->angle/45) ) >> ANGLETOFINESHIFT; 
 
    mo = FUNC2 (x+20*finecosine[an], y+20*finesine[an] 
		      , ss->sector->floorheight 
		      , MT_TFOG); 
	 
    if (players[consoleplayer].viewz != 1) 
	FUNC4 (mo, sfx_telept);	// don't start sound on first frame 
 
    return true; 
}