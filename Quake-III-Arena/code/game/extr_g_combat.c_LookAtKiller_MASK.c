#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  void** vec3_t ;
struct TYPE_9__ {int /*<<< orphan*/  trBase; } ;
struct TYPE_10__ {void** angles; TYPE_1__ pos; } ;
struct TYPE_13__ {TYPE_4__* client; TYPE_2__ s; } ;
typedef  TYPE_5__ gentity_t ;
struct TYPE_11__ {void** stats; } ;
struct TYPE_12__ {TYPE_3__ ps; } ;

/* Variables and functions */
 size_t PITCH ; 
 size_t ROLL ; 
 size_t STAT_DEAD_YAW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ; 
 size_t YAW ; 
 void* FUNC1 (void**) ; 

void FUNC2( gentity_t *self, gentity_t *inflictor, gentity_t *attacker ) {
	vec3_t		dir;
	vec3_t		angles;

	if ( attacker && attacker != self ) {
		FUNC0 (attacker->s.pos.trBase, self->s.pos.trBase, dir);
	} else if ( inflictor && inflictor != self ) {
		FUNC0 (inflictor->s.pos.trBase, self->s.pos.trBase, dir);
	} else {
		self->client->ps.stats[STAT_DEAD_YAW] = self->s.angles[YAW];
		return;
	}

	self->client->ps.stats[STAT_DEAD_YAW] = FUNC1 ( dir );

	angles[YAW] = FUNC1 ( dir );
	angles[PITCH] = 0; 
	angles[ROLL] = 0;
}