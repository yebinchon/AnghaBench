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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC6 (lua_State *L) {
  int i;
  int n = FUNC1(L);  /* number of elements to pack */
  FUNC0(L, n, 1);  /* create result table */
  FUNC2(L, 1);  /* put it at index 1 */
  for (i = n; i >= 1; i--)  /* assign elements */
    FUNC5(L, 1, i);
  FUNC3(L, n);
  FUNC4(L, 1, "n");  /* t.n = number of elements */
  return 1;  /* return table */
}