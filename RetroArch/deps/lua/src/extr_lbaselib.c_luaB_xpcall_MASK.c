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
 int /*<<< orphan*/  LUA_MULTRET ; 
 int /*<<< orphan*/  LUA_TFUNCTION ; 
 int FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int,int (*) (int /*<<< orphan*/ *,int,int)) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC7 (lua_State *L) {
  int status;
  int n = FUNC2(L);
  FUNC1(L, 2, LUA_TFUNCTION);  /* check error function */
  FUNC4(L, 1);  /* first result */
  FUNC5(L, 1);  /* function */
  FUNC6(L, 3, 2);  /* move them below function's arguments */
  status = FUNC3(L, n - 2, LUA_MULTRET, 2, 2, finishpcall);
  return FUNC0(L, status, 2);
}