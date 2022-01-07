
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ requirement; TYPE_2__* alternative; } ;
typedef TYPE_1__ rc_trigger_t ;
struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef TYPE_2__ rc_condset_t ;


 int rc_reset_condset (TYPE_2__*) ;

void rc_reset_trigger(rc_trigger_t* self) {
  rc_condset_t* condset;

  if (self->requirement != 0) {
    rc_reset_condset(self->requirement);
  }

  condset = self->alternative;

  while (condset != 0) {
    rc_reset_condset(condset);
    condset = condset->next;
  }
}
