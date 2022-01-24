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
typedef  int /*<<< orphan*/ * vec4_t ;
struct TYPE_6__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_2__ rectDef_t ;
struct TYPE_7__ {int teamCount; TYPE_1__* teamList; } ;
struct TYPE_5__ {int cinematic; int /*<<< orphan*/  teamIcon; int /*<<< orphan*/  teamIcon_Metal; int /*<<< orphan*/  imageName; } ;

/* Variables and functions */
 int CIN_loop ; 
 int CIN_silent ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_3__ uiInfo ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(rectDef_t *rect, float scale, vec4_t color) {
  int i;
  i = FUNC2(FUNC0("ui_teamName"));
  if (i >= 0 && i < uiInfo.teamCount) {

		if (uiInfo.teamList[i].cinematic >= -2) {
			if (uiInfo.teamList[i].cinematic == -1) {
				uiInfo.teamList[i].cinematic = FUNC4(FUNC8("%s.roq", uiInfo.teamList[i].imageName), 0, 0, 0, 0, (CIN_loop | CIN_silent) );
			}
			if (uiInfo.teamList[i].cinematic >= 0) {
			  FUNC5(uiInfo.teamList[i].cinematic);
				FUNC6(uiInfo.teamList[i].cinematic, rect->x, rect->y, rect->w, rect->h);
	 			FUNC3(uiInfo.teamList[i].cinematic);
			} else {
			  	FUNC7( color );
				FUNC1( rect->x, rect->y, rect->w, rect->h, uiInfo.teamList[i].teamIcon_Metal);
				FUNC7(NULL);
				uiInfo.teamList[i].cinematic = -2;
			}
		} else {
	  	FUNC7( color );
			FUNC1( rect->x, rect->y, rect->w, rect->h, uiInfo.teamList[i].teamIcon);
			FUNC7(NULL);
		}
	}

}