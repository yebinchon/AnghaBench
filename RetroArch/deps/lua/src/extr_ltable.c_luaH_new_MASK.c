#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_5__ {scalar_t__ sizearray; int /*<<< orphan*/ * array; int /*<<< orphan*/  flags; int /*<<< orphan*/ * metatable; } ;
typedef  TYPE_1__ Table ;
typedef  int /*<<< orphan*/  GCObject ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_TTABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 

Table *FUNC4 (lua_State *L) {
  GCObject *o = FUNC2(L, LUA_TTABLE, sizeof(Table));
  Table *t = FUNC1(o);
  t->metatable = NULL;
  t->flags = FUNC0(~0);
  t->array = NULL;
  t->sizearray = 0;
  FUNC3(L, t, 0);
  return t;
}