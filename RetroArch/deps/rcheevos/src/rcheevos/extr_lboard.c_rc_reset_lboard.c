
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cancel; int submit; int start; scalar_t__ submitted; scalar_t__ started; } ;
typedef TYPE_1__ rc_lboard_t ;


 int rc_reset_trigger (int *) ;

void rc_reset_lboard(rc_lboard_t* self) {
  self->started = self->submitted = 0;

  rc_reset_trigger(&self->start);
  rc_reset_trigger(&self->submit);
  rc_reset_trigger(&self->cancel);
}
