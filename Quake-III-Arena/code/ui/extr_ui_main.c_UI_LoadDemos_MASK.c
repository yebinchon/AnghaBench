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
typedef  int /*<<< orphan*/  demoExt ;
struct TYPE_2__ {int demoCount; int /*<<< orphan*/ * demoList; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int) ; 
 int MAX_DEMOS ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*) ; 
 int FUNC6 (char*,char*,char*,int) ; 
 TYPE_1__ uiInfo ; 

__attribute__((used)) static void FUNC7() {
	char	demolist[4096];
	char demoExt[32];
	char	*demoname;
	int		i, len;

	FUNC0(demoExt, sizeof(demoExt), "dm_%d", (int)FUNC5("protocol"));

	uiInfo.demoCount = FUNC6( "demos", demoExt, demolist, 4096 );

	FUNC0(demoExt, sizeof(demoExt), ".dm_%d", (int)FUNC5("protocol"));

	if (uiInfo.demoCount) {
		if (uiInfo.demoCount > MAX_DEMOS) {
			uiInfo.demoCount = MAX_DEMOS;
		}
		demoname = demolist;
		for ( i = 0; i < uiInfo.demoCount; i++ ) {
			len = FUNC4( demoname );
			if (!FUNC1(demoname +  len - FUNC4(demoExt), demoExt)) {
				demoname[len-FUNC4(demoExt)] = '\0';
			}
			FUNC2(demoname);
			uiInfo.demoList[i] = FUNC3(demoname);
			demoname += len + 1;
		}
	}

}