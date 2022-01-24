#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_6__ {int /*<<< orphan*/  cap; int /*<<< orphan*/ * L; } ;
typedef  TYPE_1__ CapState ;

/* Variables and functions */
 scalar_t__ Cfunction ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC9 (CapState *cs) {
  lua_State *L = cs->L;
  if (FUNC2(cs->cap++) || FUNC1(cs->cap) || FUNC7(cs) != 1)
    return FUNC3(L, "no initial value for accumulator capture");
  while (!FUNC1(cs->cap)) {
    int n;
    if (FUNC0(cs->cap) != Cfunction)
      return FUNC3(L, "invalid (non function) capture to accumulate");
    FUNC8(cs);
    FUNC5(L, -2);  /* put function before previous capture */
    n = FUNC6(cs, 0);
    FUNC4(L, n + 1, 1);
  }
  cs->cap++;
  return 1;
}