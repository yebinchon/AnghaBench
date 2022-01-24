#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int z; scalar_t__ target; scalar_t__ tracer; scalar_t__ momy; int /*<<< orphan*/  y; scalar_t__ momx; int /*<<< orphan*/  x; } ;
typedef  TYPE_1__ mobj_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FRACUNIT ; 
 int /*<<< orphan*/  MT_TRACER ; 
 TYPE_1__* FUNC1 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC2 (mobj_t* actor)
{	
    mobj_t*	mo;
	
    if (!actor->target)
	return;
		
    FUNC0 (actor);
    actor->z += 16*FRACUNIT;	// so missile spawns higher
    mo = FUNC1 (actor, actor->target, MT_TRACER);
    actor->z -= 16*FRACUNIT;	// back to normal

    mo->x += mo->momx;
    mo->y += mo->momy;
    mo->tracer = actor->target;
}