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
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_2__ {int myTeamCount; char** teamNames; int /*<<< orphan*/  teamLeader; } ;

/* Variables and functions */
 int K_ENTER ; 
 int K_KP_ENTER ; 
 int K_MOUSE1 ; 
 int K_MOUSE2 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int FUNC2 (char*) ; 
 TYPE_1__ uiInfo ; 
 char* FUNC3 (char*,int) ; 

__attribute__((used)) static qboolean FUNC4(int flags, float *special, int key) {
  if (key == K_MOUSE1 || key == K_MOUSE2 || key == K_ENTER || key == K_KP_ENTER) {
		int selected;

		FUNC0();
		if (!uiInfo.teamLeader) {
			return qfalse;
		}
		selected = FUNC2("cg_selectedPlayer");
		
		if (key == K_MOUSE2) {
			selected--;
		} else {
			selected++;
		}

		if (selected > uiInfo.myTeamCount) {
			selected = 0;
		} else if (selected < 0) {
			selected = uiInfo.myTeamCount;
		}

		if (selected == uiInfo.myTeamCount) {
		 	FUNC1( "cg_selectedPlayerName", "Everyone");
		} else {
		 	FUNC1( "cg_selectedPlayerName", uiInfo.teamNames[selected]);
		}
	 	FUNC1( "cg_selectedPlayer", FUNC3("%d", selected));
	}
	return qfalse;
}