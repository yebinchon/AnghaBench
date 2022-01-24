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
 int /*<<< orphan*/  ICommit ; 
 int /*<<< orphan*/  IPartialCommit ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4 (lua_State *L, int l1, int n) {
  /* choice L1; e; partialcommit L2; L2: ... e; L1: commit L3; L3: ... */
  int i;
  Instruction *op = FUNC1(L, n*(l1 + 1) + 1);
  Instruction *p = op;
  FUNC3(p++, IChoice, 1 + n*(l1 + 1));
  for (i = 0; i < n; i++) {
    p += FUNC0(L, p, 1);
    FUNC3(p++, IPartialCommit, 1);
  }
  FUNC3(p - 1, ICommit, 1);  /* correct last commit */
  FUNC2(op);
}