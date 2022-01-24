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
typedef  int lua_Unsigned ;
typedef  int /*<<< orphan*/  Table ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_MAXINTEGER ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static lua_Unsigned FUNC3 (Table *t, lua_Unsigned j) {
  lua_Unsigned i = j;  /* i is zero or a present index */
  j++;
  /* find 'i' and 'j' such that i is present and j is not */
  while (!FUNC2(FUNC1(t, j))) {
    i = j;
    if (j > FUNC0(LUA_MAXINTEGER) / 2) {  /* overflow? */
      /* table was built with bad purposes: resort to linear search */
      i = 1;
      while (!FUNC2(FUNC1(t, i))) i++;
      return i - 1;
    }
    j *= 2;
  }
  /* now do a binary search between them */
  while (j - i > 1) {
    lua_Unsigned m = (i+j)/2;
    if (FUNC2(FUNC1(t, m))) j = m;
    else i = m;
  }
  return i;
}