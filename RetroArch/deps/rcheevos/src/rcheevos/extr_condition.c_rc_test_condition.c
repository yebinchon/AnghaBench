
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int rc_peek_t ;
struct TYPE_3__ {int oper; int operand2; int operand1; } ;
typedef TYPE_1__ rc_condition_t ;
typedef int lua_State ;
 unsigned int rc_evaluate_operand (int *,int ,void*,int *) ;

int rc_test_condition(rc_condition_t* self, unsigned add_buffer, rc_peek_t peek, void* ud, lua_State* L) {
  unsigned value1 = rc_evaluate_operand(&self->operand1, peek, ud, L) + add_buffer;
  unsigned value2 = rc_evaluate_operand(&self->operand2, peek, ud, L);

  switch (self->oper) {
    case 133: return value1 == value2;
    case 128: return value1 != value2;
    case 129: return value1 < value2;
    case 130: return value1 <= value2;
    case 131: return value1 > value2;
    case 132: return value1 >= value2;
    default: return 1;
  }
}
