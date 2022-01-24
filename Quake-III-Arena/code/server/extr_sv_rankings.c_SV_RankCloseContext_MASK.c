#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ context; char* name; int /*<<< orphan*/  final_status; int /*<<< orphan*/  grank_status; int /*<<< orphan*/  token; scalar_t__ player_id; scalar_t__ match; } ;
typedef  TYPE_1__ ranked_player_t ;
typedef  int /*<<< orphan*/  GR_PLAYER_TOKEN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  GRLOG_OFF ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QGR_STATUS_NEW ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/ * s_ranked_players ; 
 int /*<<< orphan*/  s_rankings_active ; 
 scalar_t__ s_rankings_contexts ; 
 scalar_t__ s_server_context ; 
 scalar_t__ s_server_match ; 

__attribute__((used)) static void FUNC6( ranked_player_t* ranked_player )
{
	if( ranked_player == NULL )
	{
		// server cleanup
		if( s_server_context == 0 )
		{
			return;
		}
		s_server_context = 0;
		s_server_match = 0;
	}
	else
	{
		// player cleanup
		if( s_ranked_players == NULL )
		{
			return;
		}
		if( ranked_player->context == 0 )
		{
			return;
		}
		ranked_player->context = 0;
		ranked_player->match = 0;
		ranked_player->player_id = 0;
		FUNC5( ranked_player->token, 0, sizeof(GR_PLAYER_TOKEN) );
		ranked_player->grank_status = ranked_player->final_status;
		ranked_player->final_status = QGR_STATUS_NEW;
		ranked_player->name[0] = '\0';
	}

	FUNC4( s_rankings_contexts > 0 );
	s_rankings_contexts--;
	FUNC0( "SV_RankCloseContext: s_rankings_contexts = %d\n", 
		s_rankings_contexts );

	if( s_rankings_contexts == 0 )
	{
		FUNC2( GRLOG_OFF );
		
		if( s_ranked_players != NULL )
		{
			FUNC3( s_ranked_players );
			s_ranked_players = NULL;
		}

		s_rankings_active = qfalse;
		FUNC1( "sv_rankingsActive", "0" );
	}
}