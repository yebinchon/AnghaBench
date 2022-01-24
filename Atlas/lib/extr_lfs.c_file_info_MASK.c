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
struct stat {int dummy; } ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_2__ {char const* name; int /*<<< orphan*/  (* push ) (int /*<<< orphan*/ *,struct stat*) ;} ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 char* FUNC8 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* members ; 
 scalar_t__ FUNC9 (char const*,struct stat*) ; 
 scalar_t__ FUNC10 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct stat*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,struct stat*) ; 

__attribute__((used)) static int FUNC13 (lua_State *L) {
	int i;
	struct stat info;
	const char *file = FUNC0 (L, 1);

	if (FUNC9(file, &info)) {
		FUNC5 (L);
		FUNC4 (L, "cannot obtain information from file `%s'", file);
		return 2;
	}
	if (FUNC1 (L, 2)) {
		int v;
		const char *member = FUNC8 (L, 2);
		if (FUNC10 (member, "mode") == 0) v = 0;
#ifndef _WIN32
		else if (FUNC10 (member, "blksize") == 0) v = 12;
#endif
		else /* look for member */
			for (v = 1; members[v].name; v++)
				if (*members[v].name == *member)
					break;
		/* push member value and return */
		members[v].push (L, &info);
		return 1;
	} else if (!FUNC2 (L, 2))
		/* creates a table if none is given */
		FUNC3 (L);
	/* stores all members in table on top of the stack */
	for (i = 0; members[i].name; i++) {
		FUNC6 (L, members[i].name);
		members[i].push (L, &info);
		FUNC7 (L, -3);
	}
	return 1;
}