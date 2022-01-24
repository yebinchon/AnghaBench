#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_3__ {int /*<<< orphan*/  cs; } ;
typedef  int /*<<< orphan*/  Instruction ;
typedef  TYPE_1__ CharsetTag ;

/* Variables and functions */
 scalar_t__ ISCHARSET ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int,int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC11 (lua_State *L) {
  int l1;
  int n = FUNC2(L, 2);
  Instruction *p1 = FUNC0(L, 1, &l1);
  if (n >= 0) {
    CharsetTag st;
    Instruction *op;
    if (FUNC10(p1, &st) == ISCHARSET)
      return FUNC7(L, st.cs, l1, n);
    if (FUNC1(p1))
      op = FUNC8(L, l1, n);
    else
      op = FUNC9(L, p1, l1, n);
    FUNC3(op);
    FUNC4(op);
  }
  else {
    if (FUNC1(p1))
      FUNC5(L, l1, -n);
    else
      FUNC6(L, l1, -n);
  }
  return 1;
}