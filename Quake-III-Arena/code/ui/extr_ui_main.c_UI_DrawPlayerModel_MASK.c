#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int* vec3_t ;
struct TYPE_6__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_2__ rectDef_t ;
typedef  int /*<<< orphan*/  playerInfo_t ;
struct TYPE_5__ {int realTime; } ;
struct TYPE_7__ {TYPE_1__ uiDC; } ;

/* Variables and functions */
 int /*<<< orphan*/  LEGS_IDLE ; 
 int MAX_QPATH ; 
 size_t PITCH ; 
 size_t ROLL ; 
 int /*<<< orphan*/  TORSO_STAND ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int /*<<< orphan*/  WP_MACHINEGUN ; 
 size_t YAW ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 void* q3Model ; 
 void* qfalse ; 
 void* qtrue ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char*) ; 
 TYPE_3__ uiInfo ; 
 void* updateModel ; 
 int /*<<< orphan*/  vec3_origin ; 

__attribute__((used)) static void FUNC8(rectDef_t *rect) {
  static playerInfo_t info;
  char model[MAX_QPATH];
  char team[256];
	char head[256];
	vec3_t	viewangles;
	vec3_t	moveangles;

	  if (FUNC7("ui_Q3Model")) {
	  FUNC6(model, FUNC0("model"));
		FUNC6(head, FUNC0("headmodel"));
		if (!q3Model) {
			q3Model = qtrue;
			updateModel = qtrue;
		}
		team[0] = '\0';
	} else {

		FUNC6(team, FUNC0("ui_teamName"));
		FUNC6(model, FUNC0("team_model"));
		FUNC6(head, FUNC0("team_headmodel"));
		if (q3Model) {
			q3Model = qfalse;
			updateModel = qtrue;
		}
	}
  if (updateModel) {
  	FUNC5( &info, 0, sizeof(playerInfo_t) );
  	viewangles[YAW]   = 180 - 10;
  	viewangles[PITCH] = 0;
  	viewangles[ROLL]  = 0;
  	FUNC4( moveangles );
    FUNC3( &info, model, head, team);
    FUNC2( &info, LEGS_IDLE, TORSO_STAND, viewangles, vec3_origin, WP_MACHINEGUN, qfalse );
//		UI_RegisterClientModelname( &info, model, head, team);
    updateModel = qfalse;
  }

  FUNC1( rect->x, rect->y, rect->w, rect->h, &info, uiInfo.uiDC.realTime / 2);

}