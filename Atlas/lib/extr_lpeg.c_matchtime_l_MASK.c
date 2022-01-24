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
 int /*<<< orphan*/  Cclose ; 
 int /*<<< orphan*/  Cruntime ; 
 int /*<<< orphan*/  ICloseRunTime ; 
 int /*<<< orphan*/  IOpenCapture ; 
 int /*<<< orphan*/  LUA_TFUNCTION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7 (lua_State *L) {
  int l1 = FUNC1(L, 1);
  Instruction *op = FUNC3(L, 1 + l1 + 1);
  Instruction *p = op;
  FUNC2(L, 2, LUA_TFUNCTION);
  FUNC5(p++, IOpenCapture, FUNC6(L, 2), Cruntime, 0);
  p += FUNC0(L, p, 1);
  FUNC5(p, ICloseRunTime, 0, Cclose, 0);
  FUNC4(op);
  return 1;
}