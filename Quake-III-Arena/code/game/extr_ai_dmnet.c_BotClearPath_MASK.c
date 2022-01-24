#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int* vec3_t ;
struct TYPE_12__ {int* trBase; } ;
struct TYPE_14__ {scalar_t__ number; TYPE_1__ pos; } ;
typedef  TYPE_3__ entityState_t ;
struct TYPE_15__ {double fraction; scalar_t__ ent; } ;
typedef  TYPE_4__ bsp_trace_t ;
struct TYPE_13__ {int weapon; } ;
struct TYPE_16__ {scalar_t__ blockedbyavoidspot_time; int numproxmines; scalar_t__* inventory; int /*<<< orphan*/  client; int /*<<< orphan*/  entitynum; int /*<<< orphan*/  eye; int /*<<< orphan*/  viewangles; TYPE_2__ cur_ps; scalar_t__* proxmines; int /*<<< orphan*/  origin; scalar_t__ kamikazebody; } ;
typedef  TYPE_5__ bot_state_t ;
struct TYPE_17__ {int flags; int weapon; int /*<<< orphan*/  ideal_viewangles; } ;
typedef  TYPE_6__ bot_moveresult_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_5__*) ; 
 scalar_t__ FUNC3 () ; 
 size_t INVENTORY_BFG10K ; 
 size_t INVENTORY_BFGAMMO ; 
 size_t INVENTORY_CELLS ; 
 size_t INVENTORY_PLASMAGUN ; 
 size_t INVENTORY_ROCKETLAUNCHER ; 
 size_t INVENTORY_ROCKETS ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MASK_SHOT ; 
 int MOVERESULT_BLOCKEDBYAVOIDSPOT ; 
 int MOVERESULT_MOVEMENTVIEW ; 
 int MOVERESULT_MOVEMENTWEAPON ; 
 int /*<<< orphan*/  FUNC5 (int*,int*) ; 
 float FUNC6 (int*) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ ,int*) ; 
 int WEAPONINDEX_BFG ; 
 int WEAPONINDEX_PLASMAGUN ; 
 int WEAPONINDEX_ROCKET_LAUNCHER ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int*,int /*<<< orphan*/ ) ; 

void FUNC10(bot_state_t *bs, bot_moveresult_t *moveresult) {
	int i, bestmine;
	float dist, bestdist;
	vec3_t target, dir;
	bsp_trace_t bsptrace;
	entityState_t state;

	// if there is a dead body wearing kamikze nearby
	if (bs->kamikazebody) {
		// if the bot's view angles and weapon are not used for movement
		if ( !(moveresult->flags & (MOVERESULT_MOVEMENTVIEW | MOVERESULT_MOVEMENTWEAPON)) ) {
			//
			FUNC0(bs->kamikazebody, &state);
			FUNC5(state.pos.trBase, target);
			target[2] += 8;
			FUNC7(target, bs->eye, dir);
			FUNC9(dir, moveresult->ideal_viewangles);
			//
			moveresult->weapon = FUNC2(bs);
			if (moveresult->weapon == -1) {
				// FIXME: run away!
				moveresult->weapon = 0;
			}
			if (moveresult->weapon) {
				//
				moveresult->flags |= MOVERESULT_MOVEMENTWEAPON | MOVERESULT_MOVEMENTVIEW;
				// if holding the right weapon
				if (bs->cur_ps.weapon == moveresult->weapon) {
					// if the bot is pretty close with it's aim
					if (FUNC4(bs->viewangles, 20, moveresult->ideal_viewangles)) {
						//
						FUNC1(&bsptrace, bs->eye, NULL, NULL, target, bs->entitynum, MASK_SHOT);
						// if the mine is visible from the current position
						if (bsptrace.fraction >= 1.0 || bsptrace.ent == state.number) {
							// shoot at the mine
							FUNC8(bs->client);
						}
					}
				}
			}
		}
	}
	if (moveresult->flags & MOVERESULT_BLOCKEDBYAVOIDSPOT) {
		bs->blockedbyavoidspot_time = FUNC3() + 5;
	}
	// if blocked by an avoid spot and the view angles and weapon are used for movement
	if (bs->blockedbyavoidspot_time > FUNC3() &&
		!(moveresult->flags & (MOVERESULT_MOVEMENTVIEW | MOVERESULT_MOVEMENTWEAPON)) ) {
		bestdist = 300;
		bestmine = -1;
		for (i = 0; i < bs->numproxmines; i++) {
			FUNC0(bs->proxmines[i], &state);
			FUNC7(state.pos.trBase, bs->origin, dir);
			dist = FUNC6(dir);
			if (dist < bestdist) {
				bestdist = dist;
				bestmine = i;
			}
		}
		if (bestmine != -1) {
			//
			// state->generic1 == TEAM_RED || state->generic1 == TEAM_BLUE
			//
			// deactivate prox mines in the bot's path by shooting
			// rockets or plasma cells etc. at them
			FUNC0(bs->proxmines[bestmine], &state);
			FUNC5(state.pos.trBase, target);
			target[2] += 2;
			FUNC7(target, bs->eye, dir);
			FUNC9(dir, moveresult->ideal_viewangles);
			// if the bot has a weapon that does splash damage
			if (bs->inventory[INVENTORY_PLASMAGUN] > 0 && bs->inventory[INVENTORY_CELLS] > 0)
				moveresult->weapon = WEAPONINDEX_PLASMAGUN;
			else if (bs->inventory[INVENTORY_ROCKETLAUNCHER] > 0 && bs->inventory[INVENTORY_ROCKETS] > 0)
				moveresult->weapon = WEAPONINDEX_ROCKET_LAUNCHER;
			else if (bs->inventory[INVENTORY_BFG10K] > 0 && bs->inventory[INVENTORY_BFGAMMO] > 0)
				moveresult->weapon = WEAPONINDEX_BFG;
			else {
				moveresult->weapon = 0;
			}
			if (moveresult->weapon) {
				//
				moveresult->flags |= MOVERESULT_MOVEMENTWEAPON | MOVERESULT_MOVEMENTVIEW;
				// if holding the right weapon
				if (bs->cur_ps.weapon == moveresult->weapon) {
					// if the bot is pretty close with it's aim
					if (FUNC4(bs->viewangles, 20, moveresult->ideal_viewangles)) {
						//
						FUNC1(&bsptrace, bs->eye, NULL, NULL, target, bs->entitynum, MASK_SHOT);
						// if the mine is visible from the current position
						if (bsptrace.fraction >= 1.0 || bsptrace.ent == state.number) {
							// shoot at the mine
							FUNC8(bs->client);
						}
					}
				}
			}
		}
	}
}