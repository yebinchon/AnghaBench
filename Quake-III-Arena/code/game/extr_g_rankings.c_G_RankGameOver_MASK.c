#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  str ;
struct TYPE_2__ {scalar_t__ warmupTime; int maxclients; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MAX_INFO_VALUE ; 
 int /*<<< orphan*/  QGR_KEY_DEDICATED ; 
 int /*<<< orphan*/  QGR_KEY_FRAGLIMIT ; 
 int /*<<< orphan*/  QGR_KEY_GAMETYPE ; 
 int /*<<< orphan*/  QGR_KEY_HOSTNAME ; 
 int /*<<< orphan*/  QGR_KEY_MAP ; 
 int /*<<< orphan*/  QGR_KEY_MAXCLIENTS ; 
 int /*<<< orphan*/  QGR_KEY_MAXPING ; 
 int /*<<< orphan*/  QGR_KEY_MAXRATE ; 
 int /*<<< orphan*/  QGR_KEY_MINPING ; 
 int /*<<< orphan*/  QGR_KEY_MOD ; 
 int /*<<< orphan*/  QGR_KEY_TIMELIMIT ; 
 int /*<<< orphan*/  QGR_KEY_VERSION ; 
 scalar_t__ QGR_STATUS_ACTIVE ; 
 TYPE_1__ level ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int) ; 

void FUNC6( void )
{
	int		i;
	char	str[MAX_INFO_VALUE];
	int		num;
	
	if( level.warmupTime != 0 )
	{
		// no reports during warmup period
		return;
	}
	
	for( i = 0; i < level.maxclients; i++ )
	{
		if( FUNC5( i ) == QGR_STATUS_ACTIVE )
		{
			FUNC0( i );
		}
	}
	
	// hostname
	FUNC2( "sv_hostname", str, sizeof(str) );
	FUNC4( -1, -1, QGR_KEY_HOSTNAME, str );

	// map
	FUNC2( "mapname", str, sizeof(str) );
	FUNC4( -1, -1, QGR_KEY_MAP, str );

	// mod
	FUNC2( "fs_game", str, sizeof(str) );
	FUNC4( -1, -1, QGR_KEY_MOD, str );

	// gametype
	num = FUNC1("g_gametype");
	FUNC3( -1, -1, QGR_KEY_GAMETYPE, num, 0 );
	
	// fraglimit
	num = FUNC1("fraglimit");
	FUNC3( -1, -1, QGR_KEY_FRAGLIMIT, num, 0 );
	
	// timelimit
	num = FUNC1("timelimit");
	FUNC3( -1, -1, QGR_KEY_TIMELIMIT, num, 0 );

	// maxclients
	num = FUNC1("sv_maxclients");
	FUNC3( -1, -1, QGR_KEY_MAXCLIENTS, num, 0 );

	// maxrate
	num = FUNC1("sv_maxRate");
	FUNC3( -1, -1, QGR_KEY_MAXRATE, num, 0 );

	// minping
	num = FUNC1("sv_minPing");
	FUNC3( -1, -1, QGR_KEY_MINPING, num, 0 );

	// maxping
	num = FUNC1("sv_maxPing");
	FUNC3( -1, -1, QGR_KEY_MAXPING, num, 0 );

	// dedicated
	num = FUNC1("dedicated");
	FUNC3( -1, -1, QGR_KEY_DEDICATED, num, 0 );

	// version
	FUNC2( "version", str, sizeof(str) );
	FUNC4( -1, -1, QGR_KEY_VERSION, str );
}