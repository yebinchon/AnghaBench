#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int axis; double dist; struct TYPE_4__** children; } ;
typedef  TYPE_1__ worldSector_t ;
typedef  scalar_t__* vec3_t ;

/* Variables and functions */
 int AREA_DEPTH ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,scalar_t__*,scalar_t__*) ; 
 size_t sv_numworldSectors ; 
 TYPE_1__* sv_worldSectors ; 

worldSector_t *FUNC2( int depth, vec3_t mins, vec3_t maxs ) {
	worldSector_t	*anode;
	vec3_t		size;
	vec3_t		mins1, maxs1, mins2, maxs2;

	anode = &sv_worldSectors[sv_numworldSectors];
	sv_numworldSectors++;

	if (depth == AREA_DEPTH) {
		anode->axis = -1;
		anode->children[0] = anode->children[1] = NULL;
		return anode;
	}
	
	FUNC1 (maxs, mins, size);
	if (size[0] > size[1]) {
		anode->axis = 0;
	} else {
		anode->axis = 1;
	}

	anode->dist = 0.5 * (maxs[anode->axis] + mins[anode->axis]);
	FUNC0 (mins, mins1);	
	FUNC0 (mins, mins2);	
	FUNC0 (maxs, maxs1);	
	FUNC0 (maxs, maxs2);	
	
	maxs1[anode->axis] = mins2[anode->axis] = anode->dist;
	
	anode->children[0] = FUNC2 (depth+1, mins2, maxs2);
	anode->children[1] = FUNC2 (depth+1, mins1, maxs1);

	return anode;
}