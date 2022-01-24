#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int currentServerCinematic; } ;
struct TYPE_10__ {int teamCount; TYPE_3__* teamList; TYPE_2__ serverStatus; TYPE_1__* mapList; } ;
struct TYPE_9__ {size_t integer; } ;
struct TYPE_8__ {int cinematic; } ;
struct TYPE_6__ {int cinematic; } ;

/* Variables and functions */
 int UI_CLANCINEMATIC ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int UI_MAPCINEMATIC ; 
 int UI_NETMAPCINEMATIC ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_5__ uiInfo ; 
 TYPE_4__ ui_currentMap ; 

__attribute__((used)) static void FUNC4(int handle) {
	if (handle >= 0) {
	  FUNC3(handle);
	} else {
		handle = FUNC2(handle);
		if (handle == UI_MAPCINEMATIC) {
			if (uiInfo.mapList[ui_currentMap.integer].cinematic >= 0) {
			  FUNC3(uiInfo.mapList[ui_currentMap.integer].cinematic);
			  uiInfo.mapList[ui_currentMap.integer].cinematic = -1;
			}
		} else if (handle == UI_NETMAPCINEMATIC) {
			if (uiInfo.serverStatus.currentServerCinematic >= 0) {
			  FUNC3(uiInfo.serverStatus.currentServerCinematic);
				uiInfo.serverStatus.currentServerCinematic = -1;
			}
		} else if (handle == UI_CLANCINEMATIC) {
		  int i = FUNC1(FUNC0("ui_teamName"));
		  if (i >= 0 && i < uiInfo.teamCount) {
				if (uiInfo.teamList[i].cinematic >= 0) {
				  FUNC3(uiInfo.teamList[i].cinematic);
					uiInfo.teamList[i].cinematic = -1;
				}
			}
		}
	}
}