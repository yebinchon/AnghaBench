#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  message ;
struct TYPE_4__ {int id; } ;
struct TYPE_5__ {int curvalue; TYPE_1__ generic; } ;
typedef  TYPE_2__ menulist_s ;
struct TYPE_6__ {int selectedBot; scalar_t__ gametype; int /*<<< orphan*/ * botNames; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXEC_APPEND ; 
 scalar_t__ GT_CTF ; 
 int ID_LIST_BOTS ; 
 int ID_LIST_CTF_ORDERS ; 
 int ID_LIST_TEAM_ORDERS ; 
 int QM_ACTIVATED ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * ctfMessages ; 
 int /*<<< orphan*/ * teamMessages ; 
 TYPE_3__ teamOrdersMenuInfo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

__attribute__((used)) static void FUNC5( void *ptr, int event ) {
	int		id;
	int		selection;
	char	message[256];

	if (event != QM_ACTIVATED)
		return;

	id = ((menulist_s *)ptr)->generic.id;
	selection = ((menulist_s *)ptr)->curvalue;

	if( id == ID_LIST_BOTS ) {
		teamOrdersMenuInfo.selectedBot = selection;
		if( teamOrdersMenuInfo.gametype == GT_CTF ) {
			FUNC2( ID_LIST_CTF_ORDERS );
		}
		else {
			FUNC2( ID_LIST_TEAM_ORDERS );
		}
		return;
	}

	if( id == ID_LIST_CTF_ORDERS ) {
		FUNC0( message, sizeof(message), ctfMessages[selection], teamOrdersMenuInfo.botNames[teamOrdersMenuInfo.selectedBot] );
	}
	else {
		FUNC0( message, sizeof(message), teamMessages[selection], teamOrdersMenuInfo.botNames[teamOrdersMenuInfo.selectedBot] );
	}

	FUNC3( EXEC_APPEND, FUNC4( "say_team \"%s\"\n", message ) );
	FUNC1();
}