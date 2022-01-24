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
typedef  scalar_t__ lua_Number ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static int FUNC3 (lua_State *L) {
  int n = FUNC1(L);  /* number of arguments */
  lua_Number dmax = FUNC0(L, 1);
  int i;
  for (i=2; i<=n; i++) {
    lua_Number d = FUNC0(L, i);
    if (d > dmax)
      dmax = d;
  }
  FUNC2(L, dmax);
  return 1;
}