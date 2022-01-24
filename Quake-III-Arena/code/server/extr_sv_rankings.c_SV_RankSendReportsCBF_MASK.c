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
struct TYPE_3__ {scalar_t__ context; } ;
typedef  TYPE_1__ ranked_player_t ;
typedef  scalar_t__ GR_STATUS ;
typedef  scalar_t__ GR_CONTEXT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  GR_OPT_END ; 
 scalar_t__ GR_STATUS_OK ; 
 scalar_t__ GR_STATUS_PENDING ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SV_RankCleanupCBF ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ s_server_context ; 

__attribute__((used)) static void FUNC6( GR_STATUS* status, void* cbf_arg )
{
	ranked_player_t*	ranked_player;
	GR_CONTEXT			context;
	GR_STATUS			cleanup_status;

	FUNC5( status != NULL );
	// NULL cbf_arg means server is sending match reports
	
	FUNC0( "SV_RankSendReportsCBF( %08X, %08X );\n", status, cbf_arg );
	
	ranked_player = (ranked_player_t*)cbf_arg;
	if( ranked_player == NULL )
	{
		FUNC0( "SV_RankSendReportsCBF: server\n" );
		context = s_server_context;
	}
	else
	{
		FUNC0( "SV_RankSendReportsCBF: player\n" );
		context = ranked_player->context;
	}

	//assert( context != 0 );
	if( *status != GR_STATUS_OK )
	{
		FUNC3( "SV_RankSendReportsCBF: Unexpected status %s",
			FUNC4( *status ) );
	}
	
	if( context == 0 )
	{
		FUNC0( "SV_RankSendReportsCBF: WARNING: context == 0" );
		FUNC2( ranked_player );
	}
	else
	{
		cleanup_status = FUNC1
			(
				context,
				0,
				SV_RankCleanupCBF,
				cbf_arg,
				GR_OPT_END
			);
		
		if( cleanup_status != GR_STATUS_PENDING )
		{
			FUNC3( "SV_RankSendReportsCBF: Expected "
				"GR_STATUS_PENDING from GRankCleanupAsync, got %s", 
				FUNC4( cleanup_status ) );
			FUNC2( ranked_player );
		}
	}
}