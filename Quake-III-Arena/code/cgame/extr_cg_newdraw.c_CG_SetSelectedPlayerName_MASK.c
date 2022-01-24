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
struct TYPE_4__ {char* name; int /*<<< orphan*/  teamTask; } ;
typedef  TYPE_1__ clientInfo_t ;
struct TYPE_6__ {size_t integer; } ;
struct TYPE_5__ {int /*<<< orphan*/  currentOrder; TYPE_1__* clientinfo; } ;

/* Variables and functions */
 TYPE_3__ cg_currentSelectedPlayer ; 
 TYPE_2__ cgs ; 
 size_t numSortedTeamPlayers ; 
 int* sortedTeamPlayers ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 char* FUNC1 (char*,int) ; 

__attribute__((used)) static void FUNC2() {
  if (cg_currentSelectedPlayer.integer >= 0 && cg_currentSelectedPlayer.integer < numSortedTeamPlayers) {
		clientInfo_t *ci = cgs.clientinfo + sortedTeamPlayers[cg_currentSelectedPlayer.integer];
	  if (ci) {
			FUNC0("cg_selectedPlayerName", ci->name);
			FUNC0("cg_selectedPlayer", FUNC1("%d", sortedTeamPlayers[cg_currentSelectedPlayer.integer]));
			cgs.currentOrder = ci->teamTask;
	  }
	} else {
		FUNC0("cg_selectedPlayerName", "Everyone");
	}
}