#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ context; scalar_t__ grank_status; } ;
struct TYPE_4__ {int value; } ;
typedef  scalar_t__ GR_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  GR_OPT_END ; 
 scalar_t__ GR_STATUS_PENDING ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ QGR_STATUS_ACTIVE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SV_RankSendReportsCBF ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ qfalse ; 
 TYPE_2__* s_ranked_players ; 
 scalar_t__ s_rankings_active ; 
 scalar_t__ s_server_context ; 
 TYPE_1__* sv_maxclients ; 

void FUNC8( void )
{
	GR_STATUS	status;
	int			i;
	
	FUNC0( "SV_RankEnd();\n" );

	if( !s_rankings_active )
	{
		// cleanup after error during game
		if( s_ranked_players != NULL )
		{
			for( i = 0; i < sv_maxclients->value; i++ )
			{
				if( s_ranked_players[i].context != 0 )
				{
					FUNC3( &(s_ranked_players[i]) );
				}
			}
		}
		if( s_server_context != 0 )
		{
			FUNC3( NULL );
		}

		return;
	}

	for( i = 0; i < sv_maxclients->value; i++ )
	{
		if( s_ranked_players[i].grank_status == QGR_STATUS_ACTIVE )
		{
			FUNC6( i );
			FUNC0( "SV_RankEnd: SV_RankUserLogout %d\n",i );
		}
	}

	FUNC7( s_server_context != 0 );
	
	// send match reports, proceed to SV_RankSendReportsCBF
	status = FUNC2
		( 
			s_server_context,
			0,
			SV_RankSendReportsCBF,
			NULL, 
			GR_OPT_END
		);
			
	if( status != GR_STATUS_PENDING )
	{
		FUNC4( "SV_RankEnd: Expected GR_STATUS_PENDING, got %s", 
			FUNC5( status ) );
	}

	s_rankings_active = qfalse;
	FUNC1( "sv_rankingsActive", "0" );
}