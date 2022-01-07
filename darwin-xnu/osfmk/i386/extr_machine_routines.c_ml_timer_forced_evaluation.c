
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int ml_timer_evaluation_in_progress ;

boolean_t
ml_timer_forced_evaluation(void) {
 return ml_timer_evaluation_in_progress;
}
