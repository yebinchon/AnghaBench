#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* info; TYPE_5__* target; } ;
typedef  TYPE_2__ mobj_t ;
struct TYPE_10__ {scalar_t__ health; } ;
struct TYPE_8__ {int /*<<< orphan*/  seestate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_5__*) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 

void FUNC4 (mobj_t* actor)
{	
    // keep firing unless target got out of sight
    FUNC0 (actor);

    if (FUNC2 () < 10)
	return;

    if (!actor->target
	|| actor->target->health <= 0
	|| !FUNC1 (actor, actor->target) )
    {
	FUNC3 (actor, actor->info->seestate);
    }
}