#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {float formation_dist; } ;
typedef  TYPE_1__ bot_state_t ;
struct TYPE_9__ {int subtype; } ;
typedef  TYPE_2__ bot_match_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_2__*) ; 
 int MAX_MESSAGE_SIZE ; 
 int /*<<< orphan*/  NUMBER ; 
 int ST_FEET ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,char*,int) ; 

void FUNC4(bot_state_t *bs, bot_match_t *match) {
	char buf[MAX_MESSAGE_SIZE];
	float space;

	if (!FUNC1()) return;
	//if not addressed to this bot
	if (!FUNC0(bs, match)) return;
	//
	FUNC3(match, NUMBER, buf, MAX_MESSAGE_SIZE);
	//if it's the distance in feet
	if (match->subtype & ST_FEET) space = 0.3048 * 32 * FUNC2(buf);
	//else it's in meters
	else space = 32 * FUNC2(buf);
	//check if the formation intervening space is valid
	if (space < 48 || space > 500) space = 100;
	bs->formation_dist = space;
}