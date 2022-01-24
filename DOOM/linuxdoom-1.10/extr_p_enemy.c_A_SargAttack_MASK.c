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
struct TYPE_7__ {int /*<<< orphan*/  target; } ;
typedef  TYPE_1__ mobj_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*,int) ; 
 int FUNC3 () ; 

void FUNC4 (mobj_t* actor)
{
    int		damage;

    if (!actor->target)
	return;
		
    FUNC0 (actor);
    if (FUNC1 (actor))
    {
	damage = ((FUNC3()%10)+1)*4;
	FUNC2 (actor->target, actor, actor, damage);
    }
}