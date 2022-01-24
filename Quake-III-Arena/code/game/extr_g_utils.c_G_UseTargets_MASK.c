#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  inuse; int /*<<< orphan*/  (* use ) (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;int /*<<< orphan*/  target; scalar_t__ targetShaderNewName; scalar_t__ targetShaderName; } ;
typedef  TYPE_1__ gentity_t ;
struct TYPE_11__ {double time; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,float) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  CS_SHADERSTATE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 TYPE_5__ level ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  targetname ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC7( gentity_t *ent, gentity_t *activator ) {
	gentity_t		*t;
	
	if ( !ent ) {
		return;
	}

	if (ent->targetShaderName && ent->targetShaderNewName) {
		float f = level.time * 0.001;
		FUNC0(ent->targetShaderName, ent->targetShaderNewName, f);
		FUNC6(CS_SHADERSTATE, FUNC1());
	}

	if ( !ent->target ) {
		return;
	}

	t = NULL;
	while ( (t = FUNC3 (t, FUNC2(targetname), ent->target)) != NULL ) {
		if ( t == ent ) {
			FUNC4 ("WARNING: Entity used itself.\n");
		} else {
			if ( t->use ) {
				t->use (t, ent, activator);
			}
		}
		if ( !ent->inuse ) {
			FUNC4("entity was removed while using targets\n");
			return;
		}
	}
}