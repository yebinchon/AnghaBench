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
 int /*<<< orphan*/  IJmp ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static Instruction *FUNC4 (lua_State *L, int l1, int n) {
  /* e; ...; e; L2: e'(L1); jump L2; L1: ... */
  int i;
  Instruction *p = FUNC2(L, (n + 1)*l1 + 1);
  Instruction *op = p;
  for (i = 0; i < n; i++) {
    p += FUNC0(L, p, 1);
  }
  p += FUNC0(L, p, 1);
  FUNC1(p - l1, l1 + 1);
  FUNC3(p, IJmp, -l1);
  return op;
}