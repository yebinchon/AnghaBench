
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sh2irqs; int* sh2irqi; } ;
typedef int SH2 ;


 int EL_32X ;
 TYPE_1__ Pico32x ;
 int SH2_IDLE_STATES ;
 int elprintf (int ,char*,int,int,int,int) ;
 int msh2 ;
 int p32x_sh2_poll_event (int *,int ,int) ;
 int sh2_cycles_done_m68k (int *) ;
 int sh2_end_run (int *,int) ;
 int sh2_irl_irq (int *,int,int) ;
 int ssh2 ;

void p32x_update_irls(SH2 *active_sh2, int m68k_cycles)
{
  int irqs, mlvl = 0, slvl = 0;
  int mrun, srun;

  if (active_sh2 != ((void*)0))
    m68k_cycles = sh2_cycles_done_m68k(active_sh2);


  irqs = Pico32x.sh2irqs | Pico32x.sh2irqi[0];
  while ((irqs >>= 1))
    mlvl++;
  mlvl *= 2;


  irqs = Pico32x.sh2irqs | Pico32x.sh2irqi[1];
  while ((irqs >>= 1))
    slvl++;
  slvl *= 2;

  mrun = sh2_irl_irq(&msh2, mlvl, active_sh2 == &msh2);
  if (mrun) {
    p32x_sh2_poll_event(&msh2, SH2_IDLE_STATES, m68k_cycles);
    if (active_sh2 == &msh2)
      sh2_end_run(active_sh2, 1);
  }

  srun = sh2_irl_irq(&ssh2, slvl, active_sh2 == &ssh2);
  if (srun) {
    p32x_sh2_poll_event(&ssh2, SH2_IDLE_STATES, m68k_cycles);
    if (active_sh2 == &ssh2)
      sh2_end_run(active_sh2, 1);
  }

  elprintf(EL_32X, "update_irls: m %d/%d, s %d/%d", mlvl, mrun, slvl, srun);
}
