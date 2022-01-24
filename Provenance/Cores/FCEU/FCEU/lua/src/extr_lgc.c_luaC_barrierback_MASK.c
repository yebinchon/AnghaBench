#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_7__ {scalar_t__ gcstate; int /*<<< orphan*/ * grayagain; } ;
typedef  TYPE_1__ global_State ;
struct TYPE_8__ {int /*<<< orphan*/ * gclist; } ;
typedef  TYPE_2__ Table ;
typedef  int /*<<< orphan*/  GCObject ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ GCSfinalize ; 
 scalar_t__ GCSpause ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_2__*) ; 

void FUNC6 (lua_State *L, Table *t) {
  global_State *g = FUNC0(L);
  GCObject *o = FUNC5(t);
  FUNC4(FUNC2(o) && !FUNC3(g, o));
  FUNC4(g->gcstate != GCSfinalize && g->gcstate != GCSpause);
  FUNC1(o);  /* make table gray (again) */
  t->gclist = g->grayagain;
  g->grayagain = o;
}