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
 int /*<<< orphan*/  IBackCommit ; 
 int /*<<< orphan*/  IChoice ; 
 int /*<<< orphan*/  IFail ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5 (lua_State *L) {
  /* &e -> choice L1; e; backcommit L2; L1: fail; L2: ... */
  int l1 = FUNC1(L, 1);
  Instruction *p = FUNC2(L, 1 + l1 + 2);
  FUNC3(p++, IChoice, 1 + l1 + 1);
  p += FUNC0(L, p, 1);
  FUNC3(p++, IBackCommit, 2);
  FUNC4(p, IFail, 0, 1);
  return 1;
}