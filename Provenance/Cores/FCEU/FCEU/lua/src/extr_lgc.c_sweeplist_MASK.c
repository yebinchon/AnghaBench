#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  lu_mem ;
struct TYPE_17__ {TYPE_3__* rootgc; } ;
typedef  TYPE_2__ global_State ;
struct TYPE_16__ {scalar_t__ tt; int marked; TYPE_3__* next; } ;
struct TYPE_18__ {TYPE_1__ gch; } ;
struct TYPE_15__ {int /*<<< orphan*/  openupval; } ;
typedef  TYPE_3__ GCObject ;

/* Variables and functions */
 int /*<<< orphan*/  FIXEDBIT ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ LUA_TTHREAD ; 
 int /*<<< orphan*/  SFIXEDBIT ; 
 int WHITEBITS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 TYPE_11__* FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_3__*) ; 
 int FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static GCObject **FUNC10 (lua_State *L, GCObject **p, lu_mem count) {
  GCObject *curr;
  global_State *g = FUNC0(L);
  int deadmask = FUNC7(g);
  while ((curr = *p) != NULL && count-- > 0) {
    if (curr->gch.tt == LUA_TTHREAD)  /* sweep open upvalues of each thread */
      FUNC8(L, &FUNC3(curr)->openupval);
    if ((curr->gch.marked ^ WHITEBITS) & deadmask) {  /* not dead? */
      FUNC5(!FUNC4(g, curr) || FUNC9(curr->gch.marked, FIXEDBIT));
      FUNC6(g, curr);  /* make it white (for next cycle) */
      p = &curr->gch.next;
    }
    else {  /* must erase `curr' */
      FUNC5(FUNC4(g, curr) || deadmask == FUNC1(SFIXEDBIT));
      *p = curr->gch.next;
      if (curr == g->rootgc)  /* is the first element of the list? */
        g->rootgc = curr->gch.next;  /* adjust first */
      FUNC2(L, curr);
    }
  }
  return p;
}