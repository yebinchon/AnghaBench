#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/ * openupval; } ;
typedef  TYPE_2__ lua_State ;
typedef  int /*<<< orphan*/  global_State ;
struct TYPE_14__ {int /*<<< orphan*/  value; } ;
struct TYPE_16__ {scalar_t__ v; TYPE_1__ u; int /*<<< orphan*/ * next; } ;
typedef  TYPE_3__ UpVal ;
typedef  scalar_t__ StkId ;
typedef  int /*<<< orphan*/  GCObject ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 

void FUNC10 (lua_State *L, StkId level) {
  UpVal *uv;
  global_State *g = FUNC0(L);
  while (L->openupval != NULL && (uv = FUNC6(L->openupval))->v >= level) {
    GCObject *o = FUNC7(uv);
    FUNC5(!FUNC1(o) && uv->v != &uv->u.value);
    L->openupval = uv->next;  /* remove from `open' list */
    if (FUNC2(g, o))
      FUNC4(L, uv);  /* free upvalue */
    else {
      FUNC9(uv);
      FUNC8(L, &uv->u.value, uv->v);
      uv->v = &uv->u.value;  /* now current value lives here */
      FUNC3(L, uv);  /* link upvalue into `gcroot' list */
    }
  }
}