#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec4_t ;
struct TYPE_9__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_2__ rectDef_t ;
typedef  scalar_t__ qboolean ;
struct TYPE_12__ {int mapCount; TYPE_1__* mapList; } ;
struct TYPE_11__ {int integer; } ;
struct TYPE_10__ {int integer; } ;
struct TYPE_8__ {int cinematic; int /*<<< orphan*/  mapLoadName; } ;

/* Variables and functions */
 int CIN_loop ; 
 int CIN_silent ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,float,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 TYPE_5__ uiInfo ; 
 TYPE_4__ ui_currentMap ; 
 TYPE_3__ ui_currentNetMap ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(rectDef_t *rect, float scale, vec4_t color, qboolean net) {

	int map = (net) ? ui_currentNetMap.integer : ui_currentMap.integer; 
	if (map < 0 || map > uiInfo.mapCount) {
		if (net) {
			ui_currentNetMap.integer = 0;
			FUNC5("ui_currentNetMap", "0");
		} else {
			ui_currentMap.integer = 0;
			FUNC5("ui_currentMap", "0");
		}
		map = 0;
	}

	if (uiInfo.mapList[map].cinematic >= -1) {
		if (uiInfo.mapList[map].cinematic == -1) {
			uiInfo.mapList[map].cinematic = FUNC2(FUNC6("%s.roq", uiInfo.mapList[map].mapLoadName), 0, 0, 0, 0, (CIN_loop | CIN_silent) );
		}
		if (uiInfo.mapList[map].cinematic >= 0) {
		  FUNC3(uiInfo.mapList[map].cinematic);
		  FUNC4(uiInfo.mapList[map].cinematic, rect->x, rect->y, rect->w, rect->h);
 			FUNC1(uiInfo.mapList[map].cinematic);
		} else {
			uiInfo.mapList[map].cinematic = -2;
		}
	} else {
		FUNC0(rect, scale, color, net);
	}
}