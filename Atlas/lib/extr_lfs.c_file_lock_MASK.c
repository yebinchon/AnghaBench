#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,long const,long,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  errno ; 
 char* FUNC2 (int /*<<< orphan*/ *,int) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8 (lua_State *L) {
	FILE *fh = FUNC1 (L, 1, "lock");
	const char *mode = FUNC2 (L, 2);
	const long start = FUNC3 (L, 3, 0);
	long len = FUNC3 (L, 4, 0);
	if (FUNC0 (L, fh, mode, start, len, "lock")) {
		FUNC4 (L, 1);
		return 1;
	} else {
		FUNC6 (L);
		FUNC5 (L, "%s", FUNC7(errno));
		return 2;
	}
}