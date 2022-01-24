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
 int /*<<< orphan*/  IEnd ; 
 int MAXPATTSIZE ; 
 int /*<<< orphan*/  PATTERN_T ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Instruction *FUNC5 (lua_State *L, size_t n) {
  Instruction *p;
  if (n >= MAXPATTSIZE - 1)
    FUNC0(L, "pattern too big");
  p = (Instruction *)FUNC2(L, (n + 1) * sizeof(Instruction));
  FUNC1(L, PATTERN_T);
  FUNC3(L, -2);
  FUNC4(p + n, IEnd, 0);
  return p;
}