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
typedef  scalar_t__ qboolean ;
struct TYPE_4__ {int teamCount; TYPE_1__* teamList; } ;
struct TYPE_3__ {int /*<<< orphan*/  teamName; } ;

/* Variables and functions */
 int K_ENTER ; 
 int K_KP_ENTER ; 
 int K_MOUSE1 ; 
 int K_MOUSE2 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ qfalse ; 
 scalar_t__ qtrue ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 TYPE_2__ uiInfo ; 

__attribute__((used)) static qboolean FUNC3(int flags, float *special, int key, qboolean blue) {
  if (key == K_MOUSE1 || key == K_MOUSE2 || key == K_ENTER || key == K_KP_ENTER) {
    int i;
    i = FUNC1(FUNC0((blue) ? "ui_blueTeam" : "ui_redTeam"));

		if (key == K_MOUSE2) {
	    i--;
		} else {
	    i++;
		}

    if (i >= uiInfo.teamCount) {
      i = 0;
    } else if (i < 0) {
			i = uiInfo.teamCount - 1;
		}

    FUNC2( (blue) ? "ui_blueTeam" : "ui_redTeam", uiInfo.teamList[i].teamName);

    return qtrue;
  }
  return qfalse;
}