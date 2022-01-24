#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int angle; int /*<<< orphan*/  target; } ;
typedef  TYPE_1__ mobj_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  MISSILERANGE ; 
 int FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sfx_pistol ; 

void FUNC5 (mobj_t* actor)
{
    int		angle;
    int		damage;
    int		slope;
	
    if (!actor->target)
	return;
		
    FUNC0 (actor);
    angle = actor->angle;
    slope = FUNC1 (actor, angle, MISSILERANGE);

    FUNC4 (actor, sfx_pistol);
    angle += (FUNC3()-FUNC3())<<20;
    damage = ((FUNC3()%5)+1)*3;
    FUNC2 (actor, angle, MISSILERANGE, slope, damage);
}