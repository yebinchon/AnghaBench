
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kern_return_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ FALSE ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 scalar_t__ TRUE ;
 int ml_timer_evaluate () ;
 int timer_user_idle_level ;

kern_return_t timer_set_user_idle_level(int ilevel) {
 boolean_t do_reeval = FALSE;

 if ((ilevel < 0) || (ilevel > 128))
  return KERN_INVALID_ARGUMENT;

 if (ilevel < timer_user_idle_level) {
  do_reeval = TRUE;
 }

 timer_user_idle_level = ilevel;

 if (do_reeval)
  ml_timer_evaluate();

 return KERN_SUCCESS;
}
