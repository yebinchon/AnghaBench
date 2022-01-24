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
 int Cclose ; 
 int /*<<< orphan*/  ICloseCapture ; 
 int /*<<< orphan*/  IFullCapture ; 
 int /*<<< orphan*/  IOpenCapture ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC7 (lua_State *L, int kind, int labelidx) {
  int l1, n;
  Instruction *p1 = FUNC2(L, 1, &l1);
  int lc = FUNC6(p1, 0, &n);
  if (lc == l1) {  /* got whole pattern? */
    /* may use a IFullCapture instruction at its end */
    Instruction *p = FUNC3(L, l1 + 1);
    int label = FUNC1(L, labelidx);
    p += FUNC0(L, p, 1);
    FUNC5(p, IFullCapture, label, kind, n);
  }
  else {  /* must use open-close pair */
    Instruction *op = FUNC3(L, 1 + l1 + 1);
    Instruction *p = op;
    FUNC5(p++, IOpenCapture, FUNC1(L, labelidx), kind, 0);
    p += FUNC0(L, p, 1);
    FUNC5(p, ICloseCapture, 0, Cclose, 0);
    FUNC4(op);
  }
  return 1;
}