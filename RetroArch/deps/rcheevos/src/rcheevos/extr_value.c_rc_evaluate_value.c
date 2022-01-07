
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* expressions; int memrefs; } ;
typedef TYPE_1__ rc_value_t ;
typedef int rc_peek_t ;
struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef TYPE_2__ rc_expression_t ;
typedef int lua_State ;


 unsigned int rc_evaluate_expression (TYPE_2__*,int ,void*,int *) ;
 int rc_update_memref_values (int ,int ,void*) ;

unsigned rc_evaluate_value(rc_value_t* self, rc_peek_t peek, void* ud, lua_State* L) {
  rc_expression_t* exp;
  unsigned value, max;

  rc_update_memref_values(self->memrefs, peek, ud);

  exp = self->expressions;
  max = rc_evaluate_expression(exp, peek, ud, L);

  for (exp = exp->next; exp != 0; exp = exp->next) {
    value = rc_evaluate_expression(exp, peek, ud, L);

    if (value > max) {
      max = value;
    }
  }

  return max;
}
