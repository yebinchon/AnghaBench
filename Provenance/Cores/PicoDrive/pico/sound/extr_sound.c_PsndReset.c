
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PsndRerate (int ) ;
 int timers_reset () ;

void PsndReset(void)
{

  PsndRerate(0);
  timers_reset();
}
