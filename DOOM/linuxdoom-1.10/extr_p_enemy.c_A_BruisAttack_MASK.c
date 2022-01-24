#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  target; } ;
typedef  TYPE_1__ mobj_t ;

/* Variables and functions */
 int /*<<< orphan*/  MT_BRUISERSHOT ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*,int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sfx_claw ; 

void FUNC5 (mobj_t* actor)
{
    int		damage;
	
    if (!actor->target)
	return;
		
    if (FUNC0 (actor))
    {
	FUNC4 (actor, sfx_claw);
	damage = (FUNC2()%8+1)*10;
	FUNC1 (actor->target, actor, actor, damage);
	return;
    }
    
    // launch a missile
    FUNC3 (actor, actor->target, MT_BRUISERSHOT);
}