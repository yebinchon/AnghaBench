#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_14__ {scalar_t__ code; int offset; } ;
struct TYPE_15__ {TYPE_1__ i; } ;
typedef  TYPE_2__ Instruction ;
typedef  int /*<<< orphan*/  CharsetTag ;

/* Variables and functions */
 int /*<<< orphan*/  IChoice ; 
 scalar_t__ ICommit ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,int,int,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_2__*,int) ; 
 int FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static Instruction *FUNC7 (lua_State *L, Instruction *p1, int l1,
                                   int l2, int *size, CharsetTag *st2) {
  int sp = FUNC2(p1, l1);
  if (sp == 0)  /* first part is entire p1? */
    return FUNC0(L, p1, l1, l2, size, st2);
  else if ((p1 + sp - 1)->i.code == ICommit || !FUNC3(p1, sp, st2)) {
    Instruction *p;
    int init = *size;
    int end = init + sp;
    *size = end;
    p = FUNC7(L, p1 + sp, l1 - sp, l2, size, st2);
    FUNC1(p + init, p1, sp);
    (p + end - 1)->i.offset = *size - (end - 1);
    return p;
  }
  else {  /* must change back to non-optimized choice */
    Instruction *p;
    int init = *size;
    int end = init + sp + 1;  /* needs one extra instruction (choice) */
    int sizefirst = FUNC6(p1);  /* size of p1's first instruction (the test) */
    *size = end;
    p = FUNC7(L, p1 + sp, l1 - sp, l2, size, st2);
    FUNC1(p + init, p1, sizefirst);  /* copy the test */
    (p + init)->i.offset++;  /* correct jump (because of new instruction) */
    init += sizefirst;
    FUNC5(p + init, IChoice, sp - sizefirst + 1, 1); init++;
    FUNC1(p + init, p1 + sizefirst, sp - sizefirst - 1);
    init += sp - sizefirst - 1;
    FUNC4(p + init, ICommit, *size - (end - 1));
    return p;
  }
}