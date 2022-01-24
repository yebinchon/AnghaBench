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
typedef  void* time_t ;
struct utimbuf {void* actime; void* modtime; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 char* FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,void*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char const*,struct utimbuf*) ; 

__attribute__((used)) static int FUNC8 (lua_State *L) {
	const char *file = FUNC0 (L, 1);
	struct utimbuf utb, *buf;

	if (FUNC2 (L) == 1) /* set to current date/time */
		buf = NULL;
	else {
		utb.actime = (time_t)FUNC1 (L, 2, 0);
		utb.modtime = (time_t)FUNC1 (L, 3, utb.actime);
		buf = &utb;
	}
	if (FUNC7 (file, buf)) {
		FUNC5 (L);
		FUNC4 (L, "%s", FUNC6 (errno));
		return 2;
	}
	FUNC3 (L, 1);
	return 1;
}