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
 int FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7 (lua_State *L, int t, int i) {
  int res;
  FUNC1(L, -1);
  FUNC4(L, -1, i);  /* get key from pattern's environment */
  FUNC2(L, t);  /* get position from positions table */
  res = FUNC5(L, -1);
  if (res == 0) {  /* key has no registered position? */
    FUNC4(L, -2, i);  /* get key again */
    return FUNC0(L, "%s is not defined in given grammar", FUNC6(L, -1));
  }
  FUNC3(L, 2);  /* remove environment and position */
  return res;
}