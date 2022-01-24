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
struct TYPE_6__ {struct TYPE_6__* target; struct TYPE_6__* tracer; int /*<<< orphan*/  z; int /*<<< orphan*/  x; } ;
typedef  TYPE_1__ mobj_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  MT_FIRE ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3 (mobj_t*	actor)
{
    mobj_t*	fog;
	
    if (!actor->target)
	return;

    FUNC0 (actor);

    fog = FUNC2 (actor->target->x,
		       actor->target->x,
		       actor->target->z, MT_FIRE);
    
    actor->tracer = fog;
    fog->target = actor;
    fog->tracer = actor->target;
    FUNC1 (fog);
}