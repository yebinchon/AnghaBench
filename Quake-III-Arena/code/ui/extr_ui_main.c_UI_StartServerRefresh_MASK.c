#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {size_t tm_mon; int /*<<< orphan*/  tm_min; int /*<<< orphan*/  tm_hour; scalar_t__ tm_year; int /*<<< orphan*/  tm_mday; } ;
typedef  TYPE_3__ qtime_t ;
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_8__ {scalar_t__ realTime; } ;
struct TYPE_7__ {scalar_t__ refreshtime; scalar_t__ numPlayersOnServers; scalar_t__ numDisplayServers; scalar_t__ nextDisplayRefresh; int /*<<< orphan*/  refreshActive; } ;
struct TYPE_11__ {TYPE_2__ uiDC; TYPE_1__ serverStatus; } ;
struct TYPE_10__ {int /*<<< orphan*/  integer; } ;

/* Variables and functions */
 int /*<<< orphan*/  AS_GLOBAL ; 
 int /*<<< orphan*/  AS_LOCAL ; 
 int /*<<< orphan*/  AS_MPLAYER ; 
 int /*<<< orphan*/  EXEC_NOW ; 
 int /*<<< orphan*/ * MonthAbbrev ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  qtrue ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 TYPE_5__ uiInfo ; 
 TYPE_4__ ui_netSource ; 
 char* FUNC9 (char*,int,...) ; 

__attribute__((used)) static void FUNC10(qboolean full)
{
	int		i;
	char	*ptr;

	qtime_t q;
	FUNC8(&q);
 	FUNC4( FUNC9("ui_lastServerRefresh_%i", ui_netSource.integer), FUNC9("%s-%i, %i at %i:%i", MonthAbbrev[q.tm_mon],q.tm_mday, 1900+q.tm_year,q.tm_hour,q.tm_min));

	if (!full) {
		FUNC1();
		return;
	}

	uiInfo.serverStatus.refreshActive = qtrue;
	uiInfo.serverStatus.nextDisplayRefresh = uiInfo.uiDC.realTime + 1000;
	// clear number of displayed servers
	uiInfo.serverStatus.numDisplayServers = 0;
	uiInfo.serverStatus.numPlayersOnServers = 0;
	// mark all servers as visible so we store ping updates for them
	FUNC6(ui_netSource.integer, -1, qtrue);
	// reset all the pings
	FUNC7(ui_netSource.integer);
	//
	if( ui_netSource.integer == AS_LOCAL ) {
		FUNC3( EXEC_NOW, "localservers\n" );
		uiInfo.serverStatus.refreshtime = uiInfo.uiDC.realTime + 1000;
		return;
	}

	uiInfo.serverStatus.refreshtime = uiInfo.uiDC.realTime + 5000;
	if( ui_netSource.integer == AS_GLOBAL || ui_netSource.integer == AS_MPLAYER ) {
		if( ui_netSource.integer == AS_GLOBAL ) {
			i = 0;
		}
		else {
			i = 1;
		}

		ptr = FUNC0("debug_protocol");
		if (FUNC2(ptr)) {
			FUNC3( EXEC_NOW, FUNC9( "globalservers %d %s full empty\n", i, ptr));
		}
		else {
			FUNC3( EXEC_NOW, FUNC9( "globalservers %d %d full empty\n", i, (int)FUNC5( "protocol" ) ) );
		}
	}
}