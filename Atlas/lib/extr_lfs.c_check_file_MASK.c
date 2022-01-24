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
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char const*) ; 

__attribute__((used)) static FILE *FUNC2 (lua_State *L, int idx, const char *funcname) {
	FILE **fh = (FILE **)FUNC0 (L, idx, "FILE*");
	if (fh == NULL) {
		FUNC1 (L, "%s: not a file", funcname);
		return 0;
	} else if (*fh == NULL) {
		FUNC1 (L, "%s: closed file", funcname);
		return 0;
	} else
		return *fh;
}