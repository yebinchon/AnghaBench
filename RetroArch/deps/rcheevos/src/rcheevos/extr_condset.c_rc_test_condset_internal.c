
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int rc_peek_t ;
struct TYPE_5__ {TYPE_2__* conditions; } ;
typedef TYPE_1__ rc_condset_t ;
struct TYPE_6__ {int pause; int type; scalar_t__ required_hits; scalar_t__ current_hits; int operand1; struct TYPE_6__* next; } ;
typedef TYPE_2__ rc_condition_t ;
typedef int lua_State ;
 unsigned int rc_evaluate_operand (int *,int ,void*,int *) ;
 int rc_test_condition (TYPE_2__*,unsigned int,int ,void*,int *) ;

__attribute__((used)) static int rc_test_condset_internal(rc_condset_t* self, int processing_pause, int* reset, rc_peek_t peek, void* ud, lua_State* L) {
  rc_condition_t* condition;
  int set_valid, cond_valid, prev_cond;
  unsigned add_buffer, add_hits;

  set_valid = 1;
  prev_cond = 1;
  add_buffer = add_hits = 0;

  for (condition = self->conditions; condition != 0; condition = condition->next) {
    if (condition->pause != processing_pause) {
      continue;
    }

    switch (condition->type) {
      case 132:
        add_buffer += rc_evaluate_operand(&condition->operand1, peek, ud, L);
        continue;

      case 128:
        add_buffer -= rc_evaluate_operand(&condition->operand1, peek, ud, L);
        continue;

      case 133:
        if (rc_test_condition(condition, add_buffer, peek, ud, L)) {
          if (condition->required_hits == 0 || condition->current_hits < condition->required_hits) {
            condition->current_hits++;
          }
        }

        add_buffer = 0;
        add_hits += condition->current_hits;
        continue;

      case 131:
        prev_cond &= rc_test_condition(condition, add_buffer, peek, ud, L);
        add_buffer = 0;
        continue;
    }


    cond_valid = rc_test_condition(condition, add_buffer, peek, ud, L);


    cond_valid &= prev_cond;
    prev_cond = 1;


    if (condition->required_hits != 0 && (condition->current_hits + add_hits) >= condition->required_hits) {
      cond_valid = 1;
    }
    else if (cond_valid) {
      condition->current_hits++;

      if (condition->required_hits == 0) {

      }
      else if ((condition->current_hits + add_hits) < condition->required_hits) {

        cond_valid = 0;
      }
    }


    add_buffer = add_hits = 0;

    switch (condition->type) {
      case 130:

        if (cond_valid) {
          return 1;
        }



        set_valid = 0;

        if (condition->required_hits == 0) {

          condition->current_hits = 0;
        }
        else {

        }

        break;

      case 129:
        if (cond_valid) {
          *reset = 1;
          set_valid = 0;
        }

        break;

      default:
        set_valid &= cond_valid;
        break;
    }
  }

  return set_valid;
}
