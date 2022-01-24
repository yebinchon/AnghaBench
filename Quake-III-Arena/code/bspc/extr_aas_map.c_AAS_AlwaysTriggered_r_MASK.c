#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int SPAWNFLAG_NOT_DEATHMATCH ; 
 char* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/ * entities ; 
 int* mark_entities ; 
 int num_entities ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int FUNC5(char *targetname)
{
	int i;

	if (!FUNC4(targetname)) {
		return false;
	}
	//
	for (i = 0; i < num_entities; i++) {
		// if the entity will activate the given targetname
		if ( !FUNC3(targetname, FUNC0(&entities[i], "target")) ) {
			// if this activator is present in deathmatch
			if (!(FUNC2(FUNC0(&entities[i], "spawnflags")) & SPAWNFLAG_NOT_DEATHMATCH)) {
				// if it is a trigger_always entity
				if (!FUNC3("trigger_always", FUNC0(&entities[i], "classname"))) {
					return true;
				}
				// check for possible trigger_always entities activating this entity
				if ( mark_entities[i] ) {
					FUNC1( "entity %d, classname %s has recursive targetname %s\n", i,
										FUNC0(&entities[i], "classname"), targetname );
					return false;
				}
				mark_entities[i] = true;
				if ( FUNC5(FUNC0(&entities[i], "targetname")) ) {
					return true;
				}
			}
		}
	}
	return false;
}