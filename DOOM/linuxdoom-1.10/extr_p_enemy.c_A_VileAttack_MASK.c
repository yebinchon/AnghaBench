#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int angle; TYPE_6__* target; void* y; void* x; struct TYPE_14__* tracer; } ;
typedef  TYPE_2__ mobj_t ;
struct TYPE_15__ {int momz; void* x; void* y; TYPE_1__* info; } ;
struct TYPE_13__ {int mass; } ;

/* Variables and functions */
 int ANGLETOFINESHIFT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FRACUNIT ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,TYPE_2__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * finecosine ; 
 int /*<<< orphan*/ * finesine ; 
 int /*<<< orphan*/  sfx_barexp ; 

void FUNC6 (mobj_t* actor)
{	
    mobj_t*	fire;
    int		an;
	
    if (!actor->target)
	return;
    
    FUNC0 (actor);

    if (!FUNC2 (actor, actor->target) )
	return;

    FUNC5 (actor, sfx_barexp);
    FUNC3 (actor->target, actor, actor, 20);
    actor->target->momz = 1000*FRACUNIT/actor->target->info->mass;
	
    an = actor->angle >> ANGLETOFINESHIFT;

    fire = actor->tracer;

    if (!fire)
	return;
		
    // move the fire between the vile and the player
    fire->x = actor->target->x - FUNC1 (24*FRACUNIT, finecosine[an]);
    fire->y = actor->target->y - FUNC1 (24*FRACUNIT, finesine[an]);	
    FUNC4 (fire, actor, 70 );
}