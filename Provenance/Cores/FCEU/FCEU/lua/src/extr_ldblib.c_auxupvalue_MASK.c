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
 int /*<<< orphan*/  LUA_TFUNCTION ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC7 (lua_State *L, int get) {
  const char *name;
  int n = FUNC0(L, 2);
  FUNC1(L, 1, LUA_TFUNCTION);
  if (FUNC4(L, 1)) return 0;  /* cannot touch C upvalues from Lua */
  name = get ? FUNC2(L, 1, n) : FUNC6(L, 1, n);
  if (name == NULL) return 0;
  FUNC5(L, name);
  FUNC3(L, -(get+1));
  return get + 1;
}