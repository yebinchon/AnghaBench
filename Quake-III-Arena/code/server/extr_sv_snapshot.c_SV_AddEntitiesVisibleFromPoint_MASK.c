#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_17__ {scalar_t__ snapshotCounter; int numClusters; int* clusternums; int lastCluster; int /*<<< orphan*/  areanum2; int /*<<< orphan*/  areanum; } ;
typedef  TYPE_4__ svEntity_t ;
typedef  int /*<<< orphan*/  snapshotEntityNumbers_t ;
struct TYPE_16__ {int number; int generic1; int /*<<< orphan*/  origin2; int /*<<< orphan*/  origin; } ;
struct TYPE_15__ {int svFlags; int singleClient; int /*<<< orphan*/  linked; } ;
struct TYPE_18__ {TYPE_3__ s; TYPE_2__ r; } ;
typedef  TYPE_5__ sharedEntity_t ;
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_14__ {int clientNum; } ;
struct TYPE_19__ {TYPE_1__ ps; int /*<<< orphan*/  areabits; int /*<<< orphan*/  areabytes; } ;
typedef  TYPE_6__ clientSnapshot_t ;
typedef  int byte ;
struct TYPE_20__ {int num_entities; scalar_t__ snapshotCounter; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int* FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ERR_DROP ; 
 int SVF_BROADCAST ; 
 int SVF_CLIENTMASK ; 
 int SVF_NOCLIENT ; 
 int SVF_NOTSINGLECLIENT ; 
 int SVF_PORTAL ; 
 int SVF_SINGLECLIENT ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,TYPE_5__*,int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC9 (int) ; 
 TYPE_4__* FUNC10 (TYPE_5__*) ; 
 float FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qtrue ; 
 TYPE_7__ sv ; 

__attribute__((used)) static void FUNC13( vec3_t origin, clientSnapshot_t *frame, 
									snapshotEntityNumbers_t *eNums, qboolean portal ) {
	int		e, i;
	sharedEntity_t *ent;
	svEntity_t	*svEnt;
	int		l;
	int		clientarea, clientcluster;
	int		leafnum;
	int		c_fullsend;
	byte	*clientpvs;
	byte	*bitvector;

	// during an error shutdown message we may need to transmit
	// the shutdown message after the server has shutdown, so
	// specfically check for it
	if ( !sv.state ) {
		return;
	}

	leafnum = FUNC4 (origin);
	clientarea = FUNC2 (leafnum);
	clientcluster = FUNC3 (leafnum);

	// calculate the visible areas
	frame->areabytes = FUNC5( frame->areabits, clientarea );

	clientpvs = FUNC1 (clientcluster);

	c_fullsend = 0;

	for ( e = 0 ; e < sv.num_entities ; e++ ) {
		ent = FUNC9(e);

		// never send entities that aren't linked in
		if ( !ent->r.linked ) {
			continue;
		}

		if (ent->s.number != e) {
			FUNC6 ("FIXING ENT->S.NUMBER!!!\n");
			ent->s.number = e;
		}

		// entities can be flagged to explicitly not be sent to the client
		if ( ent->r.svFlags & SVF_NOCLIENT ) {
			continue;
		}

		// entities can be flagged to be sent to only one client
		if ( ent->r.svFlags & SVF_SINGLECLIENT ) {
			if ( ent->r.singleClient != frame->ps.clientNum ) {
				continue;
			}
		}
		// entities can be flagged to be sent to everyone but one client
		if ( ent->r.svFlags & SVF_NOTSINGLECLIENT ) {
			if ( ent->r.singleClient == frame->ps.clientNum ) {
				continue;
			}
		}
		// entities can be flagged to be sent to a given mask of clients
		if ( ent->r.svFlags & SVF_CLIENTMASK ) {
			if (frame->ps.clientNum >= 32)
				FUNC7( ERR_DROP, "SVF_CLIENTMASK: cientNum > 32\n" );
			if (~ent->r.singleClient & (1 << frame->ps.clientNum))
				continue;
		}

		svEnt = FUNC10( ent );

		// don't double add an entity through portals
		if ( svEnt->snapshotCounter == sv.snapshotCounter ) {
			continue;
		}

		// broadcast entities are always sent
		if ( ent->r.svFlags & SVF_BROADCAST ) {
			FUNC8( svEnt, ent, eNums );
			continue;
		}

		// ignore if not touching a PV leaf
		// check area
		if ( !FUNC0( clientarea, svEnt->areanum ) ) {
			// doors can legally straddle two areas, so
			// we may need to check another one
			if ( !FUNC0( clientarea, svEnt->areanum2 ) ) {
				continue;		// blocked by a door
			}
		}

		bitvector = clientpvs;

		// check individual leafs
		if ( !svEnt->numClusters ) {
			continue;
		}
		l = 0;
		for ( i=0 ; i < svEnt->numClusters ; i++ ) {
			l = svEnt->clusternums[i];
			if ( bitvector[l >> 3] & (1 << (l&7) ) ) {
				break;
			}
		}

		// if we haven't found it to be visible,
		// check overflow clusters that coudln't be stored
		if ( i == svEnt->numClusters ) {
			if ( svEnt->lastCluster ) {
				for ( ; l <= svEnt->lastCluster ; l++ ) {
					if ( bitvector[l >> 3] & (1 << (l&7) ) ) {
						break;
					}
				}
				if ( l == svEnt->lastCluster ) {
					continue;	// not visible
				}
			} else {
				continue;
			}
		}

		// add it
		FUNC8( svEnt, ent, eNums );

		// if its a portal entity, add everything visible from its camera position
		if ( ent->r.svFlags & SVF_PORTAL ) {
			if ( ent->s.generic1 ) {
				vec3_t dir;
				FUNC12(ent->s.origin, origin, dir);
				if ( FUNC11(dir) > (float) ent->s.generic1 * ent->s.generic1 ) {
					continue;
				}
			}
			FUNC13( ent->s.origin2, frame, eNums, qtrue );
		}

	}
}