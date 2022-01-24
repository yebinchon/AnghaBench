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
struct TYPE_4__ {scalar_t__ ltg_time; } ;
typedef  TYPE_1__ bot_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 

void FUNC1(bot_state_t *bs) {

	//don't avoid any of the powerups anymore
	FUNC0(bs, "Quad Damage");
	FUNC0(bs, "Regeneration");
	FUNC0(bs, "Battle Suit");
	FUNC0(bs, "Speed");
	FUNC0(bs, "Invisibility");
	//BotDontAvoid(bs, "Flight");
	//reset the long term goal time so the bot will go for the powerup
	//NOTE: the long term goal type doesn't change
	bs->ltg_time = 0;
}