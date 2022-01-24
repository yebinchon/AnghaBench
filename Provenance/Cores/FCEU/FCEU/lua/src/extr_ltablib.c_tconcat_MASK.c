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
typedef  int /*<<< orphan*/  luaL_Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_TTABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  luaL_checkint ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,int) ; 
 char* FUNC7 (int /*<<< orphan*/ *,int,char*,size_t*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9 (lua_State *L) {
  luaL_Buffer b;
  size_t lsep;
  int i, last;
  const char *sep = FUNC7(L, 2, "", &lsep);
  FUNC3(L, 1, LUA_TTABLE);
  i = FUNC6(L, 3, 1);
  last = FUNC5(L, luaL_checkint, 4, FUNC4(L, 1));
  FUNC2(L, &b);
  for (; i < last; i++) {
    FUNC0(L, &b, i);
    FUNC1(&b, sep, lsep);
  }
  if (i == last)  /* add last value (if interval was not empty) */
    FUNC0(L, &b, i);
  FUNC8(&b);
  return 1;
}