#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_15__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_20__ {int fraction; scalar_t__ startsolid; int /*<<< orphan*/  endpos; } ;
typedef  TYPE_4__ trace_t ;
struct TYPE_18__ {int /*<<< orphan*/  currentOrigin; int /*<<< orphan*/  ownerNum; int /*<<< orphan*/  maxs; int /*<<< orphan*/  mins; } ;
struct TYPE_16__ {scalar_t__ trType; int /*<<< orphan*/  trTime; } ;
struct TYPE_17__ {int groundEntityNum; TYPE_15__ pos; } ;
struct TYPE_21__ {int clipmask; TYPE_3__* item; TYPE_2__ r; TYPE_1__ s; } ;
typedef  TYPE_5__ gentity_t ;
struct TYPE_22__ {int /*<<< orphan*/  time; } ;
struct TYPE_19__ {scalar_t__ giType; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_15__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int CONTENTS_BODY ; 
 int CONTENTS_NODROP ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 scalar_t__ IT_TEAM ; 
 int MASK_PLAYERSOLID ; 
 scalar_t__ TR_GRAVITY ; 
 scalar_t__ TR_STATIONARY ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_8__ level ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC9( gentity_t *ent ) {
	vec3_t		origin;
	trace_t		tr;
	int			contents;
	int			mask;

	// if groundentity has been set to -1, it may have been pushed off an edge
	if ( ent->s.groundEntityNum == -1 ) {
		if ( ent->s.pos.trType != TR_GRAVITY ) {
			ent->s.pos.trType = TR_GRAVITY;
			ent->s.pos.trTime = level.time;
		}
	}

	if ( ent->s.pos.trType == TR_STATIONARY ) {
		// check think function
		FUNC3( ent );
		return;
	}

	// get current position
	FUNC0( &ent->s.pos, level.time, origin );

	// trace a line from the previous position to the current position
	if ( ent->clipmask ) {
		mask = ent->clipmask;
	} else {
		mask = MASK_PLAYERSOLID & ~CONTENTS_BODY;//MASK_SOLID;
	}
	FUNC8( &tr, ent->r.currentOrigin, ent->r.mins, ent->r.maxs, origin, 
		ent->r.ownerNum, mask );

	FUNC5( tr.endpos, ent->r.currentOrigin );

	if ( tr.startsolid ) {
		tr.fraction = 0;
	}

	FUNC6( ent );	// FIXME: avoid this for stationary?

	// check think function
	FUNC3( ent );

	if ( tr.fraction == 1 ) {
		return;
	}

	// if it is in a nodrop volume, remove it
	contents = FUNC7( ent->r.currentOrigin, -1 );
	if ( contents & CONTENTS_NODROP ) {
		if (ent->item && ent->item->giType == IT_TEAM) {
			FUNC4(ent);
		} else {
			FUNC2( ent );
		}
		return;
	}

	FUNC1( ent, &tr );
}