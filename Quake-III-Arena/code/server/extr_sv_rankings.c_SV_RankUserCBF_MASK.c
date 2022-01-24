#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ final_status; struct TYPE_9__* context; } ;
typedef  TYPE_1__ ranked_player_t ;
struct TYPE_10__ {int status; } ;
typedef  scalar_t__ GR_STATUS ;
typedef  TYPE_2__ GR_LOGIN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_2__*,...) ; 
 int /*<<< orphan*/  GR_OPT_END ; 
#define  GR_STATUS_BADPASSWORD 131 
#define  GR_STATUS_NOUSER 130 
#define  GR_STATUS_OK 129 
 scalar_t__ GR_STATUS_PENDING ; 
#define  GR_STATUS_TIMEOUT 128 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ QGR_STATUS_BAD_PASSWORD ; 
 scalar_t__ QGR_STATUS_ERROR ; 
 scalar_t__ QGR_STATUS_NEW ; 
 scalar_t__ QGR_STATUS_NO_USER ; 
 scalar_t__ QGR_STATUS_TIMEOUT ; 
 int /*<<< orphan*/  SV_RankCleanupCBF ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SV_RankJoinGameCBF ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  s_rankings_game_id ; 

__attribute__((used)) static void FUNC7( GR_LOGIN* gr_login, void* cbf_arg )
{
	ranked_player_t*	ranked_player;
	GR_STATUS			join_status;
	GR_STATUS			cleanup_status;
	
	FUNC6( gr_login != NULL );
	FUNC6( cbf_arg != NULL );

	FUNC0( "SV_RankUserCBF( %08X, %08X );\n", gr_login, cbf_arg );
	
	ranked_player = (ranked_player_t*)cbf_arg;
	FUNC6(ranked_player);
	FUNC6( ranked_player->context );
	
	switch( gr_login->status )
	{
		case GR_STATUS_OK:
			// attempt to join the game, proceed to SV_RankJoinGameCBF
			join_status = FUNC2
				( 
					ranked_player->context,
					s_rankings_game_id,
					SV_RankJoinGameCBF,
					cbf_arg,
					GR_OPT_END
				);

			if( join_status != GR_STATUS_PENDING )
			{
				FUNC4( "SV_RankUserCBF: Expected GR_STATUS_PENDING "
					"from GRankJoinGameAsync, got %s", 
					FUNC5( join_status ) );
			}
			break;
		case GR_STATUS_NOUSER:
			FUNC0( "SV_RankUserCBF: Got status %s\n",
				FUNC5( gr_login->status ) );
			ranked_player->final_status = QGR_STATUS_NO_USER;
			break;
		case GR_STATUS_BADPASSWORD:
			FUNC0( "SV_RankUserCBF: Got status %s\n",
				FUNC5( gr_login->status ) );
			ranked_player->final_status = QGR_STATUS_BAD_PASSWORD;
			break;
		case GR_STATUS_TIMEOUT:
			FUNC0( "SV_RankUserCBF: Got status %s\n",
				FUNC5( gr_login->status ) );
			ranked_player->final_status = QGR_STATUS_TIMEOUT;
			break;
		default:
			FUNC0( "SV_RankUserCBF: Unexpected status %s\n",
				FUNC5( gr_login->status ) );
			ranked_player->final_status = QGR_STATUS_ERROR;
			break;
	}

	if( ranked_player->final_status != QGR_STATUS_NEW )
	{
		// login or create failed, so clean up before the next attempt
		cleanup_status = FUNC1
			(
				ranked_player->context,
				0,
				SV_RankCleanupCBF,
				(void*)ranked_player,
				GR_OPT_END
			);
			
		if( cleanup_status != GR_STATUS_PENDING )
		{
			FUNC4( "SV_RankUserCBF: Expected GR_STATUS_PENDING "
				"from GRankCleanupAsync, got %s", 
				FUNC5( cleanup_status ) );
			FUNC3( ranked_player );
		}
	}
}