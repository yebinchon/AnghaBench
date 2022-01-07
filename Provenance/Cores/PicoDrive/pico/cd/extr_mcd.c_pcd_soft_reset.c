
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ s68k_pend_ints; } ;
struct TYPE_4__ {int* s68k_regs; TYPE_1__ m; } ;


 int EL_CD ;
 int PCD_EVENT_CDC ;
 TYPE_2__* Pico_mcd ;
 int cdc_reset () ;
 int cdd_reset () ;
 int elprintf (int ,char*) ;
 int memset (int*,int ,int) ;
 int pcd_event_schedule_s68k (int ,int) ;

void pcd_soft_reset(void)
{
  elprintf(EL_CD, "cd: soft reset");

  Pico_mcd->m.s68k_pend_ints = 0;
  cdc_reset();
  cdd_reset();




  memset(&Pico_mcd->s68k_regs[0x38], 0, 9);
  Pico_mcd->s68k_regs[0x38+9] = 0x0f;

  pcd_event_schedule_s68k(PCD_EVENT_CDC, 12500000/75);


}
