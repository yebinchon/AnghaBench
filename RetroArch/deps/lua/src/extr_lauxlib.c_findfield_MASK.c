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
 scalar_t__ LUA_TSTRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC10 (lua_State *L, int objidx, int level) {
  if (level == 0 || !FUNC2(L, -1))
    return 0;  /* not found */
  FUNC6(L);  /* start 'next' loop */
  while (FUNC3(L, -2)) {  /* for each pair in table */
    if (FUNC9(L, -2) == LUA_TSTRING) {  /* ignore non-string keys */
      if (FUNC7(L, objidx, -1)) {  /* found object? */
        FUNC4(L, 1);  /* remove value (but keep name) */
        return 1;
      }
      else if (FUNC10(L, objidx, level - 1)) {  /* try recursively */
        FUNC8(L, -2);  /* remove table (but keep name) */
        FUNC5(L, ".");
        FUNC1(L, -2);  /* place '.' between the two names */
        FUNC0(L, 3);
        return 1;
      }
    }
    FUNC4(L, 1);  /* remove value */
  }
  return 0;  /* not found */
}