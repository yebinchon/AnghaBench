#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int* vec3_t ;
struct TYPE_6__ {scalar_t__ ent; } ;
typedef  TYPE_1__ bsp_trace_t ;
struct TYPE_7__ {int /*<<< orphan*/  client; int /*<<< orphan*/  origin; int /*<<< orphan*/  entitynum; scalar_t__* inventory; } ;
typedef  TYPE_2__ bot_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int*,int*,int*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int CONTENTS_LAVA ; 
 int CONTENTS_SLIME ; 
 scalar_t__ ENTITYNUM_WORLD ; 
 size_t INVENTORY_FLIGHT ; 
 size_t INVENTORY_HASTE ; 
 size_t INVENTORY_INVISIBILITY ; 
 size_t INVENTORY_QUAD ; 
 size_t INVENTORY_REGEN ; 
 int /*<<< orphan*/  MASK_SOLID ; 
 int MASK_WATER ; 
 int /*<<< orphan*/  PRESENCE_CROUCH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*) ; 
 int qfalse ; 
 int qtrue ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC4 (int*,int /*<<< orphan*/ ) ; 

int FUNC5(bot_state_t *bs) {
	vec3_t point, start, end, mins, maxs;
	bsp_trace_t trace;

	//if the bot is dead all positions are valid
	if (FUNC1(bs)) return qtrue;
	//never start chatting with a powerup
	if (bs->inventory[INVENTORY_QUAD] ||
		bs->inventory[INVENTORY_HASTE] ||
		bs->inventory[INVENTORY_INVISIBILITY] ||
		bs->inventory[INVENTORY_REGEN] ||
		bs->inventory[INVENTORY_FLIGHT]) return qfalse;
	//must be on the ground
	//if (bs->cur_ps.groundEntityNum != ENTITYNUM_NONE) return qfalse;
	//do not chat if in lava or slime
	FUNC2(bs->origin, point);
	point[2] -= 24;
	if (FUNC4(point,bs->entitynum) & (CONTENTS_LAVA|CONTENTS_SLIME)) return qfalse;
	//do not chat if under water
	FUNC2(bs->origin, point);
	point[2] += 32;
	if (FUNC4(point,bs->entitynum) & MASK_WATER) return qfalse;
	//must be standing on the world entity
	FUNC2(bs->origin, start);
	FUNC2(bs->origin, end);
	start[2] += 1;
	end[2] -= 10;
	FUNC3(PRESENCE_CROUCH, mins, maxs);
	FUNC0(&trace, start, mins, maxs, end, bs->client, MASK_SOLID);
	if (trace.ent != ENTITYNUM_WORLD) return qfalse;
	//the bot is in a position where it can chat
	return qtrue;
}