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
 int /*<<< orphan*/  PATTERN_T ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5 (lua_State *L, int idx) {
  if (FUNC4(L, idx)) {  /* value is a userdata? */
    if (FUNC1(L, idx)) {  /* does it have a metatable? */
      FUNC0(L, PATTERN_T);
      if (FUNC3(L, -1, -2)) {  /* does it have the correct mt? */
        FUNC2(L, 2);  /* remove both metatables */
        return 1;
      }
    }
  }
  return 0;
}