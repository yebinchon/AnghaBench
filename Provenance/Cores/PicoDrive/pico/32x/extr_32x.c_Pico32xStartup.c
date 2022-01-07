
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int pal; scalar_t__ ncart_in; } ;
struct TYPE_11__ {TYPE_1__ m; } ;
struct TYPE_10__ {int * vdp_regs; int * sh2_regs; } ;
struct TYPE_9__ {void* irq_callback; } ;


 int EL_32X ;
 int EL_STATUS ;
 int P32XS2_ADEN ;
 int P32XS_nCART ;
 int P32XV_nPAL ;
 int PAHW_32X ;
 TYPE_7__ Pico ;
 TYPE_6__ Pico32x ;
 int PicoAHW ;
 int PicoMemSetup32x () ;
 int elprintf (int,char*) ;
 int emu_32x_startup () ;
 TYPE_2__ msh2 ;
 int p32x_pwm_ctl_changed () ;
 int p32x_timers_recalc () ;
 int rendstatus_old ;
 int sh2_init (TYPE_2__*,int,TYPE_2__*) ;
 void* sh2_irq_cb ;
 TYPE_2__ ssh2 ;

void Pico32xStartup(void)
{
  elprintf(EL_STATUS|EL_32X, "32X startup");


  PicoAHW |= PAHW_32X;
  sh2_init(&msh2, 0, &ssh2);
  msh2.irq_callback = sh2_irq_cb;
  sh2_init(&ssh2, 1, &msh2);
  ssh2.irq_callback = sh2_irq_cb;

  PicoMemSetup32x();
  p32x_pwm_ctl_changed();
  p32x_timers_recalc();

  Pico32x.sh2_regs[0] = P32XS2_ADEN;
  if (Pico.m.ncart_in)
    Pico32x.sh2_regs[0] |= P32XS_nCART;

  if (!Pico.m.pal)
    Pico32x.vdp_regs[0] |= P32XV_nPAL;

  rendstatus_old = -1;

  emu_32x_startup();
}
