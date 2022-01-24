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
struct TYPE_4__ {int mapCount; TYPE_1__* mapList; } ;
struct TYPE_3__ {char const* mapName; int /*<<< orphan*/  mapLoadName; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 TYPE_2__ uiInfo ; 

__attribute__((used)) static const char *FUNC1(const char *map) {
	int i;
	for (i = 0; i < uiInfo.mapCount; i++) {
		if (FUNC0(map, uiInfo.mapList[i].mapLoadName) == 0) {
			return uiInfo.mapList[i].mapName;
		}
	}
	return "";
}