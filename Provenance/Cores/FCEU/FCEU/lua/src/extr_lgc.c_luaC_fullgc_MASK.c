#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_4__ {scalar_t__ gcstate; int /*<<< orphan*/ * weak; int /*<<< orphan*/ * grayagain; int /*<<< orphan*/ * gray; int /*<<< orphan*/  rootgc; int /*<<< orphan*/ * sweepgc; scalar_t__ sweepstrgc; } ;
typedef  TYPE_1__ global_State ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ GCSfinalize ; 
 scalar_t__ GCSpause ; 
 scalar_t__ GCSpropagate ; 
 scalar_t__ GCSsweep ; 
 scalar_t__ GCSsweepstring ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5 (lua_State *L) {
  global_State *g = FUNC0(L);
  if (g->gcstate <= GCSpropagate) {
    /* reset sweep marks to sweep all elements (returning them to white) */
    g->sweepstrgc = 0;
    g->sweepgc = &g->rootgc;
    /* reset other collector lists */
    g->gray = NULL;
    g->grayagain = NULL;
    g->weak = NULL;
    g->gcstate = GCSsweepstring;
  }
  FUNC1(g->gcstate != GCSpause && g->gcstate != GCSpropagate);
  /* finish any pending sweep phase */
  while (g->gcstate != GCSfinalize) {
    FUNC1(g->gcstate == GCSsweepstring || g->gcstate == GCSsweep);
    FUNC4(L);
  }
  FUNC2(L);
  while (g->gcstate != GCSpause) {
    FUNC4(L);
  }
  FUNC3(g);
}