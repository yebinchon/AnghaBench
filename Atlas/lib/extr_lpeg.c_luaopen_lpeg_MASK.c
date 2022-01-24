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
 int /*<<< orphan*/  LUA_ENVIRONINDEX ; 
 int /*<<< orphan*/  PATTERN_T ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  metapattreg ; 
 int /*<<< orphan*/  pattreg ; 

int FUNC7 (lua_State *L) {
  FUNC2(L);
  FUNC5(L, LUA_ENVIRONINDEX);  /* empty env for new patterns */
  FUNC0(L, PATTERN_T);
  FUNC1(L, NULL, metapattreg);
  FUNC1(L, "lpeg", pattreg);
  FUNC3(L, "__index");
  FUNC4(L, -2);
  FUNC6(L, -4);
  return 1;
}