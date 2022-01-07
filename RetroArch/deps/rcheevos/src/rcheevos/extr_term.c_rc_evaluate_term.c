
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {double dbl; } ;
struct TYPE_7__ {scalar_t__ type; TYPE_1__ value; } ;
struct TYPE_6__ {unsigned int invert; TYPE_4__ operand2; TYPE_4__ operand1; } ;
typedef TYPE_2__ rc_term_t ;
typedef int rc_peek_t ;
typedef int lua_State ;


 scalar_t__ RC_OPERAND_FP ;
 unsigned int rc_evaluate_operand (TYPE_4__*,int ,void*,int *) ;

unsigned rc_evaluate_term(rc_term_t* self, rc_peek_t peek, void* ud, lua_State* L) {
  unsigned value = rc_evaluate_operand(&self->operand1, peek, ud, L);

  if (self->operand2.type != RC_OPERAND_FP) {
    return value * (rc_evaluate_operand(&self->operand2, peek, ud, L) ^ self->invert);
  }

  return (unsigned)((double)value * self->operand2.value.dbl);
}
