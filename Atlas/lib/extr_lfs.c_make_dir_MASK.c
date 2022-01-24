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
typedef  void* mode_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int S_IRGRP ; 
 int S_IROTH ; 
 int S_IRUSR ; 
 int S_IWGRP ; 
 int S_IWUSR ; 
 int S_IXGRP ; 
 int S_IXOTH ; 
 int S_IXUSR ; 
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  errno ; 
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 void* FUNC7 (void*) ; 

__attribute__((used)) static int FUNC8 (lua_State *L) {
	const char *path = FUNC1 (L, 1);
	int fail;
#ifdef _WIN32
	int oldmask = umask (0);
	fail = _mkdir (path);
#else
	mode_t oldmask = FUNC7( (mode_t)0 );
	fail =  FUNC5 (path, S_IRUSR | S_IWUSR | S_IXUSR | S_IRGRP |
	                     S_IWGRP | S_IXGRP | S_IROTH | S_IXOTH );
#endif
	if (fail) {
		FUNC4 (L);
        FUNC3 (L, "%s", FUNC6(errno));
		return 2;
	}
	FUNC7 (oldmask);
	FUNC2 (L, 1);
	return 1;
}