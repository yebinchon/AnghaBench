#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_14__ {int* cs; } ;
struct TYPE_13__ {int* buff; } ;
typedef  TYPE_1__ Instruction ;
typedef  TYPE_2__ CharsetTag ;

/* Variables and functions */
 int /*<<< orphan*/  IChoice ; 
 int /*<<< orphan*/  IFail ; 
 int /*<<< orphan*/  IFailTwice ; 
 scalar_t__ ISCHARSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int,int*) ; 
 size_t i ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (size_t,int) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (TYPE_1__*,TYPE_2__*) ; 

__attribute__((used)) static int FUNC11 (lua_State *L) {
  int l1, l2;
  Instruction *p1 = FUNC3(L, 1, &l1);
  Instruction *p2 = FUNC3(L, 2, &l2);
  CharsetTag st1, st2;
  if (FUNC10(p1, &st1) == ISCHARSET && FUNC10(p2, &st2) == ISCHARSET) {
    Instruction *p = FUNC6(L);
    FUNC5(i, p[1].buff[i] = st1.cs[i] & ~st2.cs[i]);
    FUNC2(p);
  }
  else if (FUNC4(p2)) {
    Instruction *p = FUNC7(L, l2 + 1 + l1);
    p += FUNC0(L, p, 2);
    FUNC1(p - l2, l2 + 1);
    FUNC9(p++, IFail, 0);
    FUNC0(L, p, 1);
  }
  else {  /* !e2 . e1 */
    /* !e -> choice L1; e; failtwice; L1: ... */
    Instruction *p = FUNC7(L, 1 + l2 + 1 + l1);
    Instruction *pi = p;
    FUNC9(p++, IChoice, 1 + l2 + 1);
    p += FUNC0(L, p, 2);
    FUNC9(p++, IFailTwice, 0);
    FUNC0(L, p, 1);
    FUNC8(pi);
  }
  return 1;
}