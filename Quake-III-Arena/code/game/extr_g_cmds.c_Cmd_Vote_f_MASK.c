#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  msg ;
struct TYPE_11__ {TYPE_3__* client; } ;
typedef  TYPE_4__ gentity_t ;
struct TYPE_12__ {int /*<<< orphan*/  voteNo; int /*<<< orphan*/  voteYes; int /*<<< orphan*/  voteTime; } ;
struct TYPE_9__ {int eFlags; } ;
struct TYPE_8__ {scalar_t__ sessionTeam; } ;
struct TYPE_10__ {TYPE_2__ ps; TYPE_1__ sess; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS_VOTE_NO ; 
 int /*<<< orphan*/  CS_VOTE_YES ; 
 int EF_VOTED ; 
 scalar_t__ TEAM_SPECTATOR ; 
 int g_entities ; 
 TYPE_6__ level ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

void FUNC4( gentity_t *ent ) {
	char		msg[64];

	if ( !level.voteTime ) {
		FUNC1( ent-g_entities, "print \"No vote in progress.\n\"" );
		return;
	}
	if ( ent->client->ps.eFlags & EF_VOTED ) {
		FUNC1( ent-g_entities, "print \"Vote already cast.\n\"" );
		return;
	}
	if ( ent->client->sess.sessionTeam == TEAM_SPECTATOR ) {
		FUNC1( ent-g_entities, "print \"Not allowed to vote as spectator.\n\"" );
		return;
	}

	FUNC1( ent-g_entities, "print \"Vote cast.\n\"" );

	ent->client->ps.eFlags |= EF_VOTED;

	FUNC0( 1, msg, sizeof( msg ) );

	if ( msg[0] == 'y' || msg[1] == 'Y' || msg[1] == '1' ) {
		level.voteYes++;
		FUNC2( CS_VOTE_YES, FUNC3("%i", level.voteYes ) );
	} else {
		level.voteNo++;
		FUNC2( CS_VOTE_NO, FUNC3("%i", level.voteNo ) );	
	}

	// a majority will be determined in CheckVote, which will also account
	// for players entering or leaving
}