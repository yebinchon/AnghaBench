
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ nextthink; struct TYPE_6__* activator; } ;
typedef TYPE_1__ gentity_t ;


 int func_timer_think (TYPE_1__*) ;

void func_timer_use( gentity_t *self, gentity_t *other, gentity_t *activator ) {
 self->activator = activator;


 if ( self->nextthink ) {
  self->nextthink = 0;
  return;
 }


 func_timer_think (self);
}
