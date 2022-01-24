#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  usercmd_t ;
struct TYPE_7__ {int number; } ;
struct TYPE_8__ {TYPE_1__ s; } ;
typedef  TYPE_2__ sharedEntity_t ;
struct TYPE_9__ {int deltaMessage; int /*<<< orphan*/  lastUsercmd; int /*<<< orphan*/  nextSnapshotTime; TYPE_2__* gentity; int /*<<< orphan*/  state; int /*<<< orphan*/  name; } ;
typedef  TYPE_3__ client_t ;
struct TYPE_10__ {TYPE_3__* clients; int /*<<< orphan*/  time; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GAME_CLIENT_BEGIN ; 
 TYPE_2__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  gvm ; 
 TYPE_4__ svs ; 

void FUNC3( client_t *client, usercmd_t *cmd ) {
	int		clientNum;
	sharedEntity_t *ent;

	FUNC0( "Going from CS_PRIMED to CS_ACTIVE for %s\n", client->name );
	client->state = CS_ACTIVE;

	// set up the entity for the client
	clientNum = client - svs.clients;
	ent = FUNC1( clientNum );
	ent->s.number = clientNum;
	client->gentity = ent;

	client->deltaMessage = -1;
	client->nextSnapshotTime = svs.time;	// generate a snapshot immediately
	client->lastUsercmd = *cmd;

	// call the game begin function
	FUNC2( gvm, GAME_CLIENT_BEGIN, client - svs.clients );
}