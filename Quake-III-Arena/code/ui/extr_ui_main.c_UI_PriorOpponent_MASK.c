#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int teamCount; TYPE_1__* teamList; } ;
struct TYPE_3__ {int /*<<< orphan*/  teamName; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 TYPE_2__ uiInfo ; 

__attribute__((used)) static void FUNC3() {
  int i = FUNC1(FUNC0("ui_opponentName"));
  int j = FUNC1(FUNC0("ui_teamName"));
	i--;
	if (i < 0) {
		i = uiInfo.teamCount - 1;
	}
	if (i == j) {
		i--;
		if ( i < 0) {
			i = uiInfo.teamCount - 1;
		}
	}
 	FUNC2( "ui_opponentName", uiInfo.teamList[i].teamName );
}