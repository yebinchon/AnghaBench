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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 int /*<<< orphan*/  WP_MACHINEGUN ; 
 size_t YAW ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ qfalse ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 TYPE_3__ uiInfo ; 
 scalar_t__ updateOpponentModel ; 
 int /*<<< orphan*/  vec3_origin ; 

__attribute__((used)) static void FUNC8(rectDef_t *rect) {
  static playerInfo_t info2;
  char model[MAX_QPATH];
  char headmodel[MAX_QPATH];
  char team[256];
	vec3_t	viewangles;
	vec3_t	moveangles;
  
	if (updateOpponentModel) {
		
		FUNC7(model, FUNC0("ui_opponentModel"));
	  FUNC7(headmodel, FUNC0("ui_opponentModel"));
		team[0] = '\0';

  	FUNC6( &info2, 0, sizeof(playerInfo_t) );
  	viewangles[YAW]   = 180 - 10;
  	viewangles[PITCH] = 0;
  	viewangles[ROLL]  = 0;
  	FUNC5( moveangles );
    FUNC3( &info2, model, headmodel, "");
    FUNC2( &info2, LEGS_IDLE, TORSO_STAND, viewangles, vec3_origin, WP_MACHINEGUN, qfalse );
		FUNC4( &info2, model, headmodel, team);
    updateOpponentModel = qfalse;
  }

  FUNC1( rect->x, rect->y, rect->w, rect->h, &info2, uiInfo.uiDC.realTime / 2);

}