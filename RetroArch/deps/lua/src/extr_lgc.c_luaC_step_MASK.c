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
typedef  scalar_t__ lu_mem ;
typedef  int l_mem ;
struct TYPE_6__ {scalar_t__ gcstate; int gcstepmul; int /*<<< orphan*/  gcrunning; } ;
typedef  TYPE_1__ global_State ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int GCSTEPSIZE ; 
 scalar_t__ GCSpause ; 
 int STEPMULADJ ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6 (lua_State *L) {
  global_State *g = FUNC0(L);
  l_mem debt = FUNC1(g);  /* GC deficit (be paid now) */
  if (!g->gcrunning) {  /* not running? */
    FUNC2(g, -GCSTEPSIZE * 10);  /* avoid being called too often */
    return;
  }
  do {  /* repeat until pause or enough "credit" (negative debt) */
    lu_mem work = FUNC5(L);  /* perform one single step */
    debt -= work;
  } while (debt > -GCSTEPSIZE && g->gcstate != GCSpause);
  if (g->gcstate == GCSpause)
    FUNC4(g);  /* pause until next cycle */
  else {
    debt = (debt / g->gcstepmul) * STEPMULADJ;  /* convert 'work units' to Kb */
    FUNC2(g, debt);
    FUNC3(L);
  }
}