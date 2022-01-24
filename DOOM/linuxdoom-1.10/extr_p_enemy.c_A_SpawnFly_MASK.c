#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mobjtype_t ;
struct TYPE_11__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; TYPE_1__* info; int /*<<< orphan*/  z; struct TYPE_11__* target; scalar_t__ reactiontime; } ;
typedef  TYPE_2__ mobj_t ;
struct TYPE_10__ {int /*<<< orphan*/  seestate; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT_BABY ; 
 int /*<<< orphan*/  MT_BRUISER ; 
 int /*<<< orphan*/  MT_FATSO ; 
 int /*<<< orphan*/  MT_HEAD ; 
 int /*<<< orphan*/  MT_KNIGHT ; 
 int /*<<< orphan*/  MT_PAIN ; 
 int /*<<< orphan*/  MT_SERGEANT ; 
 int /*<<< orphan*/  MT_SHADOWS ; 
 int /*<<< orphan*/  MT_SPAWNFIRE ; 
 int /*<<< orphan*/  MT_TROOP ; 
 int /*<<< orphan*/  MT_UNDEAD ; 
 int /*<<< orphan*/  MT_VILE ; 
 scalar_t__ FUNC0 (TYPE_2__*,int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sfx_telept ; 

void FUNC7 (mobj_t* mo)
{
    mobj_t*	newmobj;
    mobj_t*	fog;
    mobj_t*	targ;
    int		r;
    mobjtype_t	type;
	
    if (--mo->reactiontime)
	return;	// still flying
	
    targ = mo->target;

    // First spawn teleport fog.
    fog = FUNC4 (targ->x, targ->y, targ->z, MT_SPAWNFIRE);
    FUNC6 (fog, sfx_telept);

    // Randomly select monster to spawn.
    r = FUNC1 ();

    // Probability distribution (kind of :),
    // decreasing likelihood.
    if ( r<50 )
	type = MT_TROOP;
    else if (r<90)
	type = MT_SERGEANT;
    else if (r<120)
	type = MT_SHADOWS;
    else if (r<130)
	type = MT_PAIN;
    else if (r<160)
	type = MT_HEAD;
    else if (r<162)
	type = MT_VILE;
    else if (r<172)
	type = MT_UNDEAD;
    else if (r<192)
	type = MT_BABY;
    else if (r<222)
	type = MT_FATSO;
    else if (r<246)
	type = MT_KNIGHT;
    else
	type = MT_BRUISER;		

    newmobj	= FUNC4 (targ->x, targ->y, targ->z, type);
    if (FUNC0 (newmobj, true) )
	FUNC3 (newmobj, newmobj->info->seestate);
	
    // telefrag anything in this spot
    FUNC5 (newmobj, newmobj->x, newmobj->y);

    // remove self (i.e., cube).
    FUNC2 (mo);
}