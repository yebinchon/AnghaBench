#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_3__* entities; } ;
typedef  TYPE_2__ worldSector_t ;
struct TYPE_10__ {struct TYPE_10__* nextEntityInWorldSector; TYPE_2__* worldSector; } ;
typedef  TYPE_3__ svEntity_t ;
struct TYPE_8__ {int /*<<< orphan*/  linked; } ;
struct TYPE_11__ {TYPE_1__ r; } ;
typedef  TYPE_4__ sharedEntity_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_3__* FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  qfalse ; 

void FUNC2( sharedEntity_t *gEnt ) {
	svEntity_t		*ent;
	svEntity_t		*scan;
	worldSector_t	*ws;

	ent = FUNC1( gEnt );

	gEnt->r.linked = qfalse;

	ws = ent->worldSector;
	if ( !ws ) {
		return;		// not linked in anywhere
	}
	ent->worldSector = NULL;

	if ( ws->entities == ent ) {
		ws->entities = ent->nextEntityInWorldSector;
		return;
	}

	for ( scan = ws->entities ; scan ; scan = scan->nextEntityInWorldSector ) {
		if ( scan->nextEntityInWorldSector == ent ) {
			scan->nextEntityInWorldSector = ent->nextEntityInWorldSector;
			return;
		}
	}

	FUNC0( "WARNING: SV_UnlinkEntity: not found in worldSector\n" );
}