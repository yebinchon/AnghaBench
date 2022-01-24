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
typedef  int postGameInfo_t ;
typedef  int /*<<< orphan*/  fileHandle_t ;
struct TYPE_2__ {int /*<<< orphan*/  demoAvailable; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char const*,int,...) ; 
 int /*<<< orphan*/  FS_READ ; 
 int MAX_QPATH ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int*,int,int /*<<< orphan*/ ) ; 
 TYPE_1__ uiInfo ; 

void FUNC7(const char *map, int game) {
	char		fileName[MAX_QPATH];
	fileHandle_t f;
	postGameInfo_t newInfo;
	FUNC2(&newInfo, 0, sizeof(postGameInfo_t));
	FUNC0(fileName, MAX_QPATH, "games/%s_%i.game", map, game);
	if (FUNC5(fileName, &f, FS_READ) >= 0) {
		int size = 0;
		FUNC6(&size, sizeof(int), f);
		if (size == sizeof(postGameInfo_t)) {
			FUNC6(&newInfo, sizeof(postGameInfo_t), f);
		}
		FUNC4(f);
	}
	FUNC1(&newInfo, qfalse);

	FUNC0(fileName, MAX_QPATH, "demos/%s_%d.dm_%d", map, game, (int)FUNC3("protocol"));
	uiInfo.demoAvailable = qfalse;
	if (FUNC5(fileName, &f, FS_READ) >= 0) {
		uiInfo.demoAvailable = qtrue;
		FUNC4(f);
	} 
}