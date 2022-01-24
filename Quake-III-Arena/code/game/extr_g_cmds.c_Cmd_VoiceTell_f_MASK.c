#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_12__ {int svFlags; } ;
struct TYPE_13__ {TYPE_3__ r; TYPE_2__* client; int /*<<< orphan*/  inuse; } ;
typedef  TYPE_4__ gentity_t ;
typedef  int /*<<< orphan*/  arg ;
struct TYPE_14__ {int maxclients; } ;
struct TYPE_10__ {int /*<<< orphan*/  netname; } ;
struct TYPE_11__ {TYPE_1__ pers; } ;

/* Variables and functions */
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,TYPE_4__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int MAX_TOKEN_CHARS ; 
 int /*<<< orphan*/  SAY_TELL ; 
 int SVF_BOT ; 
 int FUNC3 (char*) ; 
 TYPE_4__* g_entities ; 
 TYPE_5__ level ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int) ; 

__attribute__((used)) static void FUNC6( gentity_t *ent, qboolean voiceonly ) {
	int			targetNum;
	gentity_t	*target;
	char		*id;
	char		arg[MAX_TOKEN_CHARS];

	if ( FUNC4 () < 2 ) {
		return;
	}

	FUNC5( 1, arg, sizeof( arg ) );
	targetNum = FUNC3( arg );
	if ( targetNum < 0 || targetNum >= level.maxclients ) {
		return;
	}

	target = &g_entities[targetNum];
	if ( !target || !target->inuse || !target->client ) {
		return;
	}

	id = FUNC0( 2 );

	FUNC1( "vtell: %s to %s: %s\n", ent->client->pers.netname, target->client->pers.netname, id );
	FUNC2( ent, target, SAY_TELL, id, voiceonly );
	// don't tell to the player self if it was already directed to this player
	// also don't send the chat back to a bot
	if ( ent != target && !(ent->r.svFlags & SVF_BOT)) {
		FUNC2( ent, ent, SAY_TELL, id, voiceonly );
	}
}