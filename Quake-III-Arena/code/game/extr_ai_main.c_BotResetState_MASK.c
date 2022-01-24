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
typedef  int /*<<< orphan*/  playerState_t ;
struct TYPE_4__ {int inuse; int client; int entitynum; int character; int ms; int gs; int cs; int ws; float entergame_time; int /*<<< orphan*/  settings; int /*<<< orphan*/  cur_ps; int /*<<< orphan*/  patrolpoints; int /*<<< orphan*/  checkpoints; } ;
typedef  TYPE_1__ bot_state_t ;
typedef  int /*<<< orphan*/  bot_settings_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

void FUNC8(bot_state_t *bs) {
	int client, entitynum, inuse;
	int movestate, goalstate, chatstate, weaponstate;
	bot_settings_t settings;
	int character;
	playerState_t ps;							//current player state
	float entergame_time;

	//save some things that should not be reset here
	FUNC1(&settings, &bs->settings, sizeof(bot_settings_t));
	FUNC1(&ps, &bs->cur_ps, sizeof(playerState_t));
	inuse = bs->inuse;
	client = bs->client;
	entitynum = bs->entitynum;
	character = bs->character;
	movestate = bs->ms;
	goalstate = bs->gs;
	chatstate = bs->cs;
	weaponstate = bs->ws;
	entergame_time = bs->entergame_time;
	//free checkpoints and patrol points
	FUNC0(bs->checkpoints);
	FUNC0(bs->patrolpoints);
	//reset the whole state
	FUNC2(bs, 0, sizeof(bot_state_t));
	//copy back some state stuff that should not be reset
	bs->ms = movestate;
	bs->gs = goalstate;
	bs->cs = chatstate;
	bs->ws = weaponstate;
	FUNC1(&bs->cur_ps, &ps, sizeof(playerState_t));
	FUNC1(&bs->settings, &settings, sizeof(bot_settings_t));
	bs->inuse = inuse;
	bs->client = client;
	bs->entitynum = entitynum;
	bs->character = character;
	bs->entergame_time = entergame_time;
	//reset several states
	if (bs->ms) FUNC6(bs->ms);
	if (bs->gs) FUNC5(bs->gs);
	if (bs->ws) FUNC7(bs->ws);
	if (bs->gs) FUNC3(bs->gs);
	if (bs->ms) FUNC4(bs->ms);
}