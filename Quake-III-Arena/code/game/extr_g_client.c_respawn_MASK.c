#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  clientNum; } ;
struct TYPE_12__ {TYPE_3__ s; TYPE_2__* client; } ;
typedef  TYPE_4__ gentity_t ;
struct TYPE_9__ {int /*<<< orphan*/  origin; } ;
struct TYPE_10__ {TYPE_1__ ps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  EV_PLAYER_TELEPORT_IN ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3( gentity_t *ent ) {
	gentity_t	*tent;

	FUNC1 (ent);
	FUNC0(ent);

	// add a teleportation effect
	tent = FUNC2( ent->client->ps.origin, EV_PLAYER_TELEPORT_IN );
	tent->s.clientNum = ent->s.clientNum;
}