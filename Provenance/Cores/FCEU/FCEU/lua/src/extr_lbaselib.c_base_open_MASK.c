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
 int LUA_GLOBALSINDEX ; 
 char* LUA_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  base_funcs ; 
 int /*<<< orphan*/  ipairsaux ; 
 int /*<<< orphan*/  luaB_ipairs ; 
 int /*<<< orphan*/  luaB_newproxy ; 
 int /*<<< orphan*/  luaB_next ; 
 int /*<<< orphan*/  luaB_pairs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC9 (lua_State *L) {
  /* set global _G */
  FUNC5(L, LUA_GLOBALSINDEX);
  FUNC7(L, "_G");
  /* open lib into global table */
  FUNC1(L, "_G", base_funcs);
  FUNC4(L, LUA_VERSION);
  FUNC7(L, "_VERSION");  /* set global _VERSION */
  /* `ipairs' and `pairs' need auxliliary functions as upvalues */
  FUNC0(L, "ipairs", luaB_ipairs, ipairsaux);
  FUNC0(L, "pairs", luaB_pairs, luaB_next);
  /* `newproxy' needs a weaktable as upvalue */
  FUNC2(L, 0, 1);  /* new table `w' */
  FUNC5(L, -1);  /* `w' will be its own metatable */
  FUNC8(L, -2);
  FUNC4(L, "kv");
  FUNC6(L, -2, "__mode");  /* metatable(w).__mode = "kv" */
  FUNC3(L, luaB_newproxy, 1);
  FUNC7(L, "newproxy");  /* set global `newproxy' */
}