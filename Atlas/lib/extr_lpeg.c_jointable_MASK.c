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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC8 (lua_State *L, int p1) {
  int n, n1, i;
  FUNC2(L, p1);
  n1 = FUNC3(L, -1);  /* number of elements in p1's env */
  FUNC2(L, -2);
  if (n1 == 0 || FUNC1(L, -2, -1)) {
    FUNC4(L, 2);
    return 0;  /* no need to change anything */
  }
  n = FUNC3(L, -1);  /* number of elements in p's env */
  if (n == 0) {
    FUNC4(L, 1);  /* removes p env */
    FUNC7(L, -2);  /* p now shares p1's env */
    return 0;  /* no need to correct anything */
  }
  FUNC0(L, n + n1, 0);
  /* stack: p; p1 env; p env; new p env */
  for (i = 1; i <= n; i++) {
    FUNC5(L, -2, i);
    FUNC6(L, -2, i);
  }
  for (i = 1; i <= n1; i++) {
    FUNC5(L, -3, i);
    FUNC6(L, -2, n + i);
  }
  FUNC7(L, -4);  /* new table becomes p env */
  FUNC4(L, 2);  /* remove p1 env and old p env */
  return n;
}