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
 int /*<<< orphan*/  IO_INPUT ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9 (lua_State *L) {
  int toclose;
  if (FUNC4(L, 1)) FUNC5(L);  /* at least one argument */
  if (FUNC3(L, 1)) {  /* no file name? */
    FUNC2(L, LUA_REGISTRYINDEX, IO_INPUT);  /* get default input */
    FUNC6(L, 1);  /* put it at index 1 */
    FUNC8(L);  /* check that it's a valid file handle */
    toclose = 0;  /* do not close it after iteration */
  }
  else {  /* open a new file */
    const char *filename = FUNC1(L, 1);
    FUNC7(L, filename, "r");
    FUNC6(L, 1);  /* put file at index 1 */
    toclose = 1;  /* close it after iteration */
  }
  FUNC0(L, toclose);
  return 1;
}