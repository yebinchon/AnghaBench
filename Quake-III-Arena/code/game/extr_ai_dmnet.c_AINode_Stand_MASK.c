#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ lastframe_health; scalar_t__* inventory; scalar_t__ standfindenemy_time; scalar_t__ stand_time; int /*<<< orphan*/  chatto; int /*<<< orphan*/  cs; int /*<<< orphan*/  client; } ;
typedef  TYPE_1__ bot_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int) ; 
 scalar_t__ FUNC5 () ; 
 size_t INVENTORY_HEALTH ; 
 int qfalse ; 
 int qtrue ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(bot_state_t *bs) {

	//if the bot's health decreased
	if (bs->lastframe_health > bs->inventory[INVENTORY_HEALTH]) {
		if (FUNC3(bs)) {
			bs->standfindenemy_time = FUNC5() + FUNC2(bs) + 0.1;
			bs->stand_time = FUNC5() + FUNC2(bs) + 0.1;
		}
	}
	if (bs->standfindenemy_time < FUNC5()) {
		if (FUNC4(bs, -1)) {
			FUNC0(bs, "stand: found enemy");
			return qfalse;
		}
		bs->standfindenemy_time = FUNC5() + 1;
	}
	// put up chat icon
	FUNC7(bs->client);
	// when done standing
	if (bs->stand_time < FUNC5()) {
		FUNC6(bs->cs, 0, bs->chatto);
		FUNC1(bs, "stand: time out");
		return qfalse;
	}
	//
	return qtrue;
}