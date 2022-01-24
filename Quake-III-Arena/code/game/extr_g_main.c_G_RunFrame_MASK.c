#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_8__ ;
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {scalar_t__ eType; scalar_t__ event; } ;
struct TYPE_19__ {int /*<<< orphan*/  linked; } ;
struct TYPE_21__ {scalar_t__ eventTime; int /*<<< orphan*/  classname; scalar_t__ inuse; TYPE_4__ s; scalar_t__ physicsObject; scalar_t__ neverFree; TYPE_3__ r; scalar_t__ freeAfterEvent; scalar_t__ unlinkAfterEvent; TYPE_2__* client; } ;
typedef  TYPE_5__ gentity_t ;
struct TYPE_23__ {scalar_t__ integer; } ;
struct TYPE_22__ {int previousTime; int time; int num_entities; int maxclients; int /*<<< orphan*/  framenum; scalar_t__ restarted; } ;
struct TYPE_17__ {scalar_t__ externalEvent; } ;
struct TYPE_18__ {TYPE_1__ ps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 scalar_t__ ET_ITEM ; 
 scalar_t__ ET_MISSILE ; 
 scalar_t__ ET_MOVER ; 
 scalar_t__ EVENT_VALID_MSEC ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int MAX_CLIENTS ; 
 int MAX_GENTITIES ; 
 int /*<<< orphan*/  TEAM_BLUE ; 
 int /*<<< orphan*/  TEAM_RED ; 
 TYPE_5__* g_entities ; 
 TYPE_8__ g_listEntity ; 
 TYPE_7__ level ; 
 scalar_t__ qfalse ; 
 int /*<<< orphan*/  FUNC15 (char*,char*) ; 
 int FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (TYPE_5__*) ; 

void FUNC18( int levelTime ) {
	int			i;
	gentity_t	*ent;
	int			msec;
int start, end;

	// if we are waiting for the level to restart, do nothing
	if ( level.restarted ) {
		return;
	}

	level.framenum++;
	level.previousTime = level.time;
	level.time = levelTime;
	msec = level.time - level.previousTime;

	// get any cvar changes
	FUNC14();

	//
	// go through all allocated objects
	//
	start = FUNC16();
	ent = &g_entities[0];
	for (i=0 ; i<level.num_entities ; i++, ent++) {
		if ( !ent->inuse ) {
			continue;
		}

		// clear events that are too old
		if ( level.time - ent->eventTime > EVENT_VALID_MSEC ) {
			if ( ent->s.event ) {
				ent->s.event = 0;	// &= EV_EVENT_BITS;
				if ( ent->client ) {
					ent->client->ps.externalEvent = 0;
					// predicted events should never be set to zero
					//ent->client->ps.events[0] = 0;
					//ent->client->ps.events[1] = 0;
				}
			}
			if ( ent->freeAfterEvent ) {
				// tempEntities or dropped items completely go away after their event
				FUNC7( ent );
				continue;
			} else if ( ent->unlinkAfterEvent ) {
				// items that will respawn will hide themselves after their pickup event
				ent->unlinkAfterEvent = qfalse;
				FUNC17( ent );
			}
		}

		// temporary entities don't think
		if ( ent->freeAfterEvent ) {
			continue;
		}

		if ( !ent->r.linked && ent->neverFree ) {
			continue;
		}

		if ( ent->s.eType == ET_MISSILE ) {
			FUNC11( ent );
			continue;
		}

		if ( ent->s.eType == ET_ITEM || ent->physicsObject ) {
			FUNC10( ent );
			continue;
		}

		if ( ent->s.eType == ET_MOVER ) {
			FUNC12( ent );
			continue;
		}

		if ( i < MAX_CLIENTS ) {
			FUNC9( ent );
			continue;
		}

		FUNC13( ent );
	}
end = FUNC16();

start = FUNC16();
	// perform final fixups on the players
	ent = &g_entities[0];
	for (i=0 ; i < level.maxclients ; i++, ent++ ) {
		if ( ent->inuse ) {
			FUNC6( ent );
		}
	}
end = FUNC16();

	// see if it is time to do a tournement restart
	FUNC4();

	// see if it is time to end the level
	FUNC1();

	// update to team status?
	FUNC2();

	// cancel vote if timed out
	FUNC5();

	// check team votes
	FUNC3( TEAM_RED );
	FUNC3( TEAM_BLUE );

	// for tracking changes
	FUNC0();

	if (g_listEntity.integer) {
		for (i = 0; i < MAX_GENTITIES; i++) {
			FUNC8("%4i: %s\n", i, g_entities[i].classname);
		}
		FUNC15("g_listEntity", "0");
	}
}