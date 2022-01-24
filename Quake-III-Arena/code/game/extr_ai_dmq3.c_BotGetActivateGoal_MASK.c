#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
typedef  int /*<<< orphan*/  tmpmodel ;
typedef  int /*<<< orphan*/  targetname ;
typedef  int /*<<< orphan*/  target ;
typedef  int /*<<< orphan*/  model ;
typedef  int /*<<< orphan*/  classname ;
struct TYPE_25__ {int areanum; int /*<<< orphan*/  tfl; int /*<<< orphan*/  origin; TYPE_3__* activatestack; } ;
typedef  TYPE_4__ bot_state_t ;
struct TYPE_23__ {scalar_t__ entitynum; int /*<<< orphan*/  areanum; } ;
struct TYPE_26__ {int numareas; int* areas; int time; TYPE_2__ goal; } ;
typedef  TYPE_5__ bot_activategoal_t ;
struct TYPE_27__ {int /*<<< orphan*/  origin; int /*<<< orphan*/  modelindex; } ;
typedef  TYPE_6__ aas_entityinfo_t ;
struct TYPE_28__ {int contents; } ;
typedef  TYPE_7__ aas_areainfo_t ;
struct TYPE_22__ {scalar_t__ entitynum; } ;
struct TYPE_24__ {int time; int start_time; TYPE_1__ goal; scalar_t__ inuse; } ;
struct TYPE_21__ {scalar_t__ integer; } ;

/* Variables and functions */
 int AREACONTENTS_MOVER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ET_MOVER ; 
 int FUNC8 () ; 
 int MAX_ACTIVATEAREAS ; 
 int MAX_INFO_STRING ; 
 int /*<<< orphan*/  PRT_ERROR ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (char*) ; 
 TYPE_10__ bot_developer ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (int,TYPE_7__*) ; 
 scalar_t__ FUNC15 (int) ; 
 int FUNC16 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ FUNC18 (int,char*,float*) ; 
 int /*<<< orphan*/  FUNC19 (int,char*,int*) ; 
 int FUNC20 (int) ; 
 scalar_t__ FUNC21 (int,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC22 (int,char*,int /*<<< orphan*/ ) ; 

int FUNC23(bot_state_t *bs, int entitynum, bot_activategoal_t *activategoal) {
	int i, ent, cur_entities[10], spawnflags, modelindex, areas[MAX_ACTIVATEAREAS*2], numareas, t;
	char model[MAX_INFO_STRING], tmpmodel[128];
	char target[128], classname[128];
	float health;
	char targetname[10][128];
	aas_entityinfo_t entinfo;
	aas_areainfo_t areainfo;
	vec3_t origin, angles, absmins, absmaxs;

	FUNC12(activategoal, 0, sizeof(bot_activategoal_t));
	FUNC2(entitynum, &entinfo);
	FUNC7(model, sizeof( model ), "*%d", entinfo.modelindex);
	for (ent = FUNC20(0); ent; ent = FUNC20(ent)) {
		if (!FUNC21(ent, "model", tmpmodel, sizeof(tmpmodel))) continue;
		if (!FUNC13(model, tmpmodel)) break;
	}
	if (!ent) {
		FUNC0(PRT_ERROR, "BotGetActivateGoal: no entity found with model %s\n", model);
		return 0;
	}
	FUNC21(ent, "classname", classname, sizeof(classname));
	if (!classname) {
		FUNC0(PRT_ERROR, "BotGetActivateGoal: entity with model %s has no classname\n", model);
		return 0;
	}
	//if it is a door
	if (!FUNC13(classname, "func_door")) {
		if (FUNC18(ent, "health", &health)) {
			//if the door has health then the door must be shot to open
			if (health) {
				FUNC4(bs, ent, activategoal);
				return ent;
			}
		}
		//
		FUNC19(ent, "spawnflags", &spawnflags);
		// if the door starts open then just wait for the door to return
		if ( spawnflags & 1 )
			return 0;
		//get the door origin
		if (!FUNC22(ent, "origin", origin)) {
			FUNC9(origin);
		}
		//if the door is open or opening already
		if (!FUNC10(origin, entinfo.origin))
			return 0;
		// store all the areas the door is in
		FUNC21(ent, "model", model, sizeof(model));
		if (*model) {
			modelindex = FUNC11(model+1);
			if (modelindex) {
				FUNC9(angles);
				FUNC5(modelindex, ET_MOVER, 0, absmins, absmaxs);
				//
				numareas = FUNC17(absmins, absmaxs, areas, MAX_ACTIVATEAREAS*2);
				// store the areas with reachabilities first
				for (i = 0; i < numareas; i++) {
					if (activategoal->numareas >= MAX_ACTIVATEAREAS)
						break;
					if ( !FUNC15(areas[i]) ) {
						continue;
					}
					FUNC14(areas[i], &areainfo);
					if (areainfo.contents & AREACONTENTS_MOVER) {
						activategoal->areas[activategoal->numareas++] = areas[i];
					}
				}
				// store any remaining areas
				for (i = 0; i < numareas; i++) {
					if (activategoal->numareas >= MAX_ACTIVATEAREAS)
						break;
					if ( FUNC15(areas[i]) ) {
						continue;
					}
					FUNC14(areas[i], &areainfo);
					if (areainfo.contents & AREACONTENTS_MOVER) {
						activategoal->areas[activategoal->numareas++] = areas[i];
					}
				}
			}
		}
	}
	// if the bot is blocked by or standing on top of a button
	if (!FUNC13(classname, "func_button")) {
		return 0;
	}
	// get the targetname so we can find an entity with a matching target
	if (!FUNC21(ent, "targetname", targetname[0], sizeof(targetname[0]))) {
		if (bot_developer.integer) {
			FUNC0(PRT_ERROR, "BotGetActivateGoal: entity with model \"%s\" has no targetname\n", model);
		}
		return 0;
	}
	// allow tree-like activation
	cur_entities[0] = FUNC20(0);
	for (i = 0; i >= 0 && i < 10;) {
		for (ent = cur_entities[i]; ent; ent = FUNC20(ent)) {
			if (!FUNC21(ent, "target", target, sizeof(target))) continue;
			if (!FUNC13(targetname[i], target)) {
				cur_entities[i] = FUNC20(ent);
				break;
			}
		}
		if (!ent) {
			if (bot_developer.integer) {
				FUNC0(PRT_ERROR, "BotGetActivateGoal: no entity with target \"%s\"\n", targetname[i]);
			}
			i--;
			continue;
		}
		if (!FUNC21(ent, "classname", classname, sizeof(classname))) {
			if (bot_developer.integer) {
				FUNC0(PRT_ERROR, "BotGetActivateGoal: entity with target \"%s\" has no classname\n", targetname[i]);
			}
			continue;
		}
		// BSP button model
		if (!FUNC13(classname, "func_button")) {
			//
			if (!FUNC3(bs, ent, activategoal))
				continue;
			// if the bot tries to activate this button already
			if ( bs->activatestack && bs->activatestack->inuse &&
				 bs->activatestack->goal.entitynum == activategoal->goal.entitynum &&
				 bs->activatestack->time > FUNC8() &&
				 bs->activatestack->start_time < FUNC8() - 2)
				continue;
			// if the bot is in a reachability area
			if ( FUNC15(bs->areanum) ) {
				// disable all areas the blocking entity is in
				FUNC1( activategoal, qfalse );
				//
				t = FUNC16(bs->areanum, bs->origin, activategoal->goal.areanum, bs->tfl);
				// if the button is not reachable
				if (!t) {
					continue;
				}
				activategoal->time = FUNC8() + t * 0.01 + 5;
			}
			return ent;
		}
		// invisible trigger multiple box
		else if (!FUNC13(classname, "trigger_multiple")) {
			//
			if (!FUNC6(bs, ent, activategoal))
				continue;
			// if the bot tries to activate this trigger already
			if ( bs->activatestack && bs->activatestack->inuse &&
				 bs->activatestack->goal.entitynum == activategoal->goal.entitynum &&
				 bs->activatestack->time > FUNC8() &&
				 bs->activatestack->start_time < FUNC8() - 2)
				continue;
			// if the bot is in a reachability area
			if ( FUNC15(bs->areanum) ) {
				// disable all areas the blocking entity is in
				FUNC1( activategoal, qfalse );
				//
				t = FUNC16(bs->areanum, bs->origin, activategoal->goal.areanum, bs->tfl);
				// if the trigger is not reachable
				if (!t) {
					continue;
				}
				activategoal->time = FUNC8() + t * 0.01 + 5;
			}
			return ent;
		}
		else if (!FUNC13(classname, "func_timer")) {
			// just skip the func_timer
			continue;
		}
		// the actual button or trigger might be linked through a target_relay or target_delay
		else if (!FUNC13(classname, "target_relay") || !FUNC13(classname, "target_delay")) {
			if (FUNC21(ent, "targetname", targetname[i+1], sizeof(targetname[0]))) {
				i++;
				cur_entities[i] = FUNC20(0);
			}
		}
	}
#ifdef OBSTACLEDEBUG
	BotAI_Print(PRT_ERROR, "BotGetActivateGoal: no valid activator for entity with target \"%s\"\n", targetname[0]);
#endif
	return 0;
}