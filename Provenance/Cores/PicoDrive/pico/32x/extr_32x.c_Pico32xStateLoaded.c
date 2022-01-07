
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int m68krcycles_done; } ;


 int Pico32xMemStateLoaded () ;
 int SekCyclesDone () ;
 int p32x_pwm_state_loaded () ;
 int p32x_run_events (int ) ;
 int p32x_update_irls (int *,int ) ;
 TYPE_1__* sh2s ;

void Pico32xStateLoaded(int is_early)
{
  if (is_early) {
    Pico32xMemStateLoaded();
    return;
  }

  sh2s[0].m68krcycles_done = sh2s[1].m68krcycles_done = SekCyclesDone();
  p32x_update_irls(((void*)0), SekCyclesDone());
  p32x_pwm_state_loaded();
  p32x_run_events(SekCyclesDone());
}
