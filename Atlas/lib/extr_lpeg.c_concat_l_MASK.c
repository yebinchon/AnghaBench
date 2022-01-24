#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_8__ {scalar_t__ aux; } ;
struct TYPE_9__ {TYPE_1__ i; } ;
typedef  TYPE_2__ Instruction ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,int,int*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC6 (lua_State *L) {
  /* p1; p2; */
  int l1, l2;
  Instruction *p1 = FUNC2(L, 1, &l1);
  Instruction *p2 = FUNC2(L, 2, &l2);
  if (FUNC3(p1) && FUNC3(p2))
    FUNC1(L, p1->i.aux + p2->i.aux, 0, NULL);
  else {
    Instruction *op = FUNC4(L, l1 + l2);
    Instruction *p = op + FUNC0(L, op, 1);
    FUNC0(L, p, 2);
    FUNC5(op);
  }
  return 1;
}