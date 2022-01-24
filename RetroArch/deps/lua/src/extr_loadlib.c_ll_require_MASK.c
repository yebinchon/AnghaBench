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
 char const* LUA_LOADED_TABLE ; 
 int LUA_REGISTRYINDEX ; 
 scalar_t__ LUA_TNIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC13 (lua_State *L) {
  const char *name = FUNC1(L, 1);
  FUNC11(L, 1);  /* LOADED table will be at index 2 */
  FUNC3(L, LUA_REGISTRYINDEX, LUA_LOADED_TABLE);
  FUNC3(L, 2, name);  /* LOADED[name] */
  if (FUNC12(L, -1))  /* is it there? */
    return 1;  /* package is already loaded */
  /* else must load package */
  FUNC6(L, 1);  /* remove 'getfield' result */
  FUNC0(L, name);
  FUNC8(L, name);  /* pass name as argument to module loader */
  FUNC4(L, -2);  /* name is 1st argument (before search data) */
  FUNC2(L, 2, 1);  /* run loader to load module */
  if (!FUNC5(L, -1))  /* non-nil return? */
    FUNC10(L, 2, name);  /* LOADED[name] = returned value */
  if (FUNC3(L, 2, name) == LUA_TNIL) {   /* module set no value? */
    FUNC7(L, 1);  /* use true as result */
    FUNC9(L, -1);  /* extra copy to be returned */
    FUNC10(L, 2, name);  /* LOADED[name] = true */
  }
  return 1;
}