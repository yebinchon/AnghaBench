#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * vec3_t ;
struct TYPE_11__ {int /*<<< orphan*/ * trBase; } ;
struct TYPE_12__ {TYPE_2__ apos; int /*<<< orphan*/  modelindex; TYPE_4__* number; int /*<<< orphan*/  eType; } ;
struct TYPE_10__ {int /*<<< orphan*/  currentOrigin; void* contents; } ;
struct TYPE_13__ {char* classname; scalar_t__ nextthink; int /*<<< orphan*/  think; TYPE_3__ s; TYPE_1__ r; void* clipmask; } ;
typedef  TYPE_4__ gentity_t ;
struct TYPE_14__ {scalar_t__ time; int /*<<< orphan*/  intermission_origin; int /*<<< orphan*/  intermission_angle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* CONTENTS_SOLID ; 
 int /*<<< orphan*/  ET_GENERAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC3 () ; 
 int /*<<< orphan*/  PodiumPlacementThink ; 
 int /*<<< orphan*/  SP_PODIUM_MODEL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 size_t YAW ; 
 int g_entities ; 
 TYPE_6__ level ; 
 scalar_t__ FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static gentity_t *FUNC9( void ) {
	gentity_t	*podium;
	vec3_t		vec;
	vec3_t		origin;

	podium = FUNC3();
	if ( !podium ) {
		return NULL;
	}

	podium->classname = "podium";
	podium->s.eType = ET_GENERAL;
	podium->s.number = podium - g_entities;
	podium->clipmask = CONTENTS_SOLID;
	podium->r.contents = CONTENTS_SOLID;
	podium->s.modelindex = FUNC1( SP_PODIUM_MODEL );

	FUNC0( level.intermission_angle, vec, NULL, NULL );
	FUNC4( level.intermission_origin, FUNC6( "g_podiumDist" ), vec, origin );
	origin[2] -= FUNC6( "g_podiumDrop" );
	FUNC2( podium, origin );

	FUNC5( level.intermission_origin, podium->r.currentOrigin, vec );
	podium->s.apos.trBase[YAW] = FUNC8( vec );
	FUNC7 (podium);

	podium->think = PodiumPlacementThink;
	podium->nextthink = level.time + 100;
	return podium;
}