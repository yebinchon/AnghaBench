#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_6__ {TYPE_2__* fixedgc; TYPE_2__* allgc; } ;
typedef  TYPE_1__ global_State ;
struct TYPE_7__ {struct TYPE_7__* next; } ;
typedef  TYPE_2__ GCObject ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

void FUNC3 (lua_State *L, GCObject *o) {
  global_State *g = FUNC0(L);
  FUNC1(g->allgc == o);  /* object must be 1st in 'allgc' list! */
  FUNC2(o);  /* they will be gray forever */
  g->allgc = o->next;  /* remove object from 'allgc' list */
  o->next = g->fixedgc;  /* link it to 'fixedgc' list */
  g->fixedgc = o;
}