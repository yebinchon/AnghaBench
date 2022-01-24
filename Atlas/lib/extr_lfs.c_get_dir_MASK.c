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

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,int) ; 
 char* getcwd_error ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC3 (lua_State *L) {
	char path[255+2];
	if (FUNC0(path, 255) == NULL) {
		FUNC1(L);
		FUNC2(L, getcwd_error);
		return 2;
	}
	else {
		FUNC2(L, path);
		return 1;
	}
}