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
 int /*<<< orphan*/  IChoice ; 
 int /*<<< orphan*/  IPartialCommit ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Instruction *FUNC5 (lua_State *L, Instruction *p1, int l1, int n) {
  /* e; ...; e; choice L1; L2: e; partialcommit L2; L1: ... */
  int i;
  Instruction *op = FUNC2(L, (n + 1)*l1 + 2);
  Instruction *p = op;
  if (!FUNC4(L, p1, p1, p1 + l1, 0, 0))
    FUNC1(L, "loop body may accept empty string");
  for (i = 0; i < n; i++) {
    p += FUNC0(L, p, 1);
  }
  FUNC3(p++, IChoice, 1 + l1 + 1);
  p += FUNC0(L, p, 1);
  FUNC3(p, IPartialCommit, -l1);
  return op;
}