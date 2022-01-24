#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
typedef  int lu_mem ;
typedef  int l_mem ;
struct TYPE_5__ {int /*<<< orphan*/  size; int /*<<< orphan*/ * hash; } ;
struct TYPE_6__ {int gcstate; int totalbytes; int estimate; int /*<<< orphan*/  gcdept; int /*<<< orphan*/  tmudata; int /*<<< orphan*/ ** sweepgc; TYPE_1__ strt; int /*<<< orphan*/  sweepstrgc; int /*<<< orphan*/  gray; } ;
typedef  TYPE_2__ global_State ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int GCFINALIZECOST ; 
 int GCSWEEPCOST ; 
 int GCSWEEPMAX ; 
#define  GCSfinalize 132 
#define  GCSpause 131 
#define  GCSpropagate 130 
#define  GCSsweep 129 
#define  GCSsweepstring 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/ ** FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static l_mem FUNC9 (lua_State *L) {
  global_State *g = FUNC0(L);
  /*lua_checkmemory(L);*/
  switch (g->gcstate) {
    case GCSpause: {
      FUNC5(L);  /* start a new collection */
      return 0;
    }
    case GCSpropagate: {
      if (g->gray)
        return FUNC6(g);
      else {  /* no more `gray' objects */
        FUNC2(L);  /* finish mark phase */
        return 0;
      }
    }
    case GCSsweepstring: {
      lu_mem old = g->totalbytes;
      FUNC8(L, &g->strt.hash[g->sweepstrgc++]);
      if (g->sweepstrgc >= g->strt.size)  /* nothing more to sweep? */
        g->gcstate = GCSsweep;  /* end sweep-string phase */
      FUNC4(old >= g->totalbytes);
      g->estimate -= old - g->totalbytes;
      return GCSWEEPCOST;
    }
    case GCSsweep: {
      lu_mem old = g->totalbytes;
      g->sweepgc = FUNC7(L, g->sweepgc, GCSWEEPMAX);
      if (*g->sweepgc == NULL) {  /* nothing more to sweep? */
        FUNC3(L);
        g->gcstate = GCSfinalize;  /* end sweep phase */
      }
      FUNC4(old >= g->totalbytes);
      g->estimate -= old - g->totalbytes;
      return GCSWEEPMAX*GCSWEEPCOST;
    }
    case GCSfinalize: {
      if (g->tmudata) {
        FUNC1(L);
        if (g->estimate > GCFINALIZECOST)
          g->estimate -= GCFINALIZECOST;
        return GCFINALIZECOST;
      }
      else {
        g->gcstate = GCSpause;  /* end collection */
        g->gcdept = 0;
        return 0;
      }
    }
    default: FUNC4(0); return 0;
  }
}