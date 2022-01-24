#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_21__ {scalar_t__ tag; int* cs; } ;
struct TYPE_20__ {int* buff; } ;
typedef  TYPE_1__ Instruction ;
typedef  TYPE_2__ CharsetTag ;

/* Variables and functions */
 int CHARSETINSTSIZE ; 
 int /*<<< orphan*/  IChoice ; 
 int /*<<< orphan*/  ICommit ; 
 int /*<<< orphan*/  IJmp ; 
 scalar_t__ ISCHARSET ; 
 int /*<<< orphan*/  ISet ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,TYPE_1__**,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*,TYPE_2__*) ; 
 size_t i ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (size_t,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,TYPE_2__*) ; 

__attribute__((used)) static Instruction *FUNC11 (lua_State *L, Instruction *p1, int l1,
                                int l2, int *size, CharsetTag *st2) {
  Instruction *op;
  CharsetTag st1;
  FUNC10(p1, &st1);
  if (st1.tag == ISCHARSET && st2->tag == ISCHARSET) {
    Instruction *p = FUNC1(L, &op, size, CHARSETINSTSIZE);
    FUNC9(p, ISet, 0);
    FUNC7(i, p[1].buff[i] = st1.cs[i] | st2->cs[i]);
    FUNC4(p);
  }
  else if (FUNC5(&st1, st2) || FUNC6(p1)) {
    Instruction *p = FUNC1(L, &op, size, l1 + 1 + l2);
    FUNC3(p, p1, l1);
    FUNC2(p, l1 + 1);
    p += l1;
    FUNC9(p++, IJmp, l2 + 1);
    FUNC0(L, p, 2);
  }
  else {
    /* choice L1; e1; commit L2; L1: e2; L2: ... */
    Instruction *p = FUNC1(L, &op, size, 1 + l1 + 1 + l2);
    FUNC9(p++, IChoice, 1 + l1 + 1);
    FUNC3(p, p1, l1); p += l1;
    FUNC9(p++, ICommit, 1 + l2);
    FUNC0(L, p, 2);
    FUNC8(p - (1 + l1 + 1));
  }
  return op;
}