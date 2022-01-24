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
struct TYPE_8__ {scalar_t__ offset; } ;
struct TYPE_9__ {TYPE_1__ i; } ;
typedef  TYPE_2__ Instruction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_2__*,int) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC6 (lua_State *L, Instruction *p, int p1idx) {
  Instruction *p1 = (Instruction *)FUNC3(L, p1idx);
  int sz = FUNC4(L, p1idx);
  int corr = FUNC2(L, p1idx);
  FUNC0(p, p1, sz + 1);
  if (corr != 0) {
    Instruction *px;
    for (px = p; px < p + sz; px += FUNC5(px)) {
      if (FUNC1(px) && px->i.offset != 0)
        px->i.offset += corr;
    }
  }
  return sz;
}