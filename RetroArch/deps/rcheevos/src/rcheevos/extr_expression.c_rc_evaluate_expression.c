
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ rc_term_t ;
typedef int rc_peek_t ;
struct TYPE_6__ {TYPE_1__* terms; } ;
typedef TYPE_2__ rc_expression_t ;
typedef int lua_State ;


 scalar_t__ rc_evaluate_term (TYPE_1__*,int ,void*,int *) ;

unsigned rc_evaluate_expression(rc_expression_t* self, rc_peek_t peek, void* ud, lua_State* L) {
  rc_term_t* term;
  unsigned value;

  value = 0;

  for (term = self->terms; term != 0; term = term->next) {
    value += rc_evaluate_term(term, peek, ud, L);
  }

  return value;
}
