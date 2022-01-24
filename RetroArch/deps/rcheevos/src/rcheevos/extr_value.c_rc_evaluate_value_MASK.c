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
struct TYPE_5__ {TYPE_2__* expressions; int /*<<< orphan*/  memrefs; } ;
typedef  TYPE_1__ rc_value_t ;
typedef  int /*<<< orphan*/  rc_peek_t ;
struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef  TYPE_2__ rc_expression_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 

unsigned FUNC2(rc_value_t* self, rc_peek_t peek, void* ud, lua_State* L) {
  rc_expression_t* exp;
  unsigned value, max;

  FUNC1(self->memrefs, peek, ud);

  exp = self->expressions;
  max = FUNC0(exp, peek, ud, L);

  for (exp = exp->next; exp != 0; exp = exp->next) {
    value = FUNC0(exp, peek, ud, L);

    if (value > max) {
      max = value;
    }
  }

  return max;
}