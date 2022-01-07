
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int rc_peek_t ;
struct TYPE_5__ {scalar_t__ requirement; scalar_t__ alternative; } ;
struct TYPE_4__ {int submitted; int started; int value; int * progress; TYPE_2__ start; TYPE_2__ submit; TYPE_2__ cancel; int memrefs; } ;
typedef TYPE_1__ rc_lboard_t ;
typedef int lua_State ;







 unsigned int rc_evaluate_value (int *,int ,void*,int *) ;
 int rc_test_trigger (TYPE_2__*,int ,void*,int *) ;
 int rc_update_memref_values (int ,int ,void*) ;

int rc_evaluate_lboard(rc_lboard_t* self, unsigned* value, rc_peek_t peek, void* peek_ud, lua_State* L) {
  int start_ok, cancel_ok, submit_ok;
  int action = -1;

  rc_update_memref_values(self->memrefs, peek, peek_ud);


  start_ok = rc_test_trigger(&self->start, peek, peek_ud, L);
  cancel_ok = rc_test_trigger(&self->cancel, peek, peek_ud, L);
  submit_ok = rc_test_trigger(&self->submit, peek, peek_ud, L);

  if (self->submitted) {

    if (!start_ok) {
      self->submitted = 0;
    }
  }
  else if (!self->started) {

    if (start_ok && !cancel_ok) {
      if (submit_ok) {

        action = 128;

        self->submitted = 1;
      }
      else if (self->start.requirement != 0 || self->start.alternative != 0) {
        self->started = 1;
        action = 129;
      }
    }
  }
  else {

    if (cancel_ok) {

      self->started = 0;
      action = 131;

      self->submitted = 1;
    }
    else if (submit_ok) {

      self->started = 0;
      action = 128;
      self->submitted = 1;
    }
  }

  if (action == -1) {
    action = self->started ? 132 : 130;
  }


  switch (action) {
    case 132:
    case 129:
      *value = rc_evaluate_value(self->progress != 0 ? self->progress : &self->value, peek, peek_ud, L);
      break;

    case 128:
      *value = rc_evaluate_value(&self->value, peek, peek_ud, L);
      break;

    case 130:
    case 131:
      *value = 0;
      break;
  }

  return action;
}
