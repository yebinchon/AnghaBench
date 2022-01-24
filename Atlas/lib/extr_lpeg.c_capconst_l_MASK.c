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
typedef  int /*<<< orphan*/  Instruction ;

/* Variables and functions */
 int /*<<< orphan*/  Cconst ; 
 int /*<<< orphan*/  IEmptyCaptureIdx ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8 (lua_State *L) {
  int i, j;
  int n = FUNC1(L);
  Instruction *p = FUNC6(L, n);
  FUNC0(L, n, 0);  /* new environment for the new pattern */
  for (i = j = 1; i <= n; i++) {
    if (FUNC2(L, i))
      FUNC7(p++, IEmptyCaptureIdx, 0, Cconst, 0);
    else {
      FUNC7(p++, IEmptyCaptureIdx, j, Cconst, 0);
      FUNC3(L, i);
      FUNC4(L, -2, j++);
    }
  }
  FUNC5(L, -2);   /* set environment */
  return 1;
}