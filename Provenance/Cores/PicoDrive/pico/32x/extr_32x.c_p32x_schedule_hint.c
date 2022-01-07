
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int scanline; } ;
struct TYPE_6__ {TYPE_1__ m; } ;
struct TYPE_5__ {int* sh2irq_mask; int* sh2_regs; } ;
typedef int SH2 ;


 int P32X_EVENT_HINT ;
 TYPE_3__ Pico ;
 TYPE_2__ Pico32x ;
 int p32x_event_schedule (int,int ,int) ;
 int p32x_event_schedule_sh2 (int *,int ,int) ;

void p32x_schedule_hint(SH2 *sh2, int m68k_cycles)
{

  int after;

  if (!((Pico32x.sh2irq_mask[0] | Pico32x.sh2irq_mask[1]) & 4))
    return;


  if (!(Pico32x.sh2_regs[0] & 0x80) && Pico.m.scanline > 224)
    return;

  after = (Pico32x.sh2_regs[4 / 2] + 1) * 488;
  if (sh2 != ((void*)0))
    p32x_event_schedule_sh2(sh2, P32X_EVENT_HINT, after);
  else
    p32x_event_schedule(m68k_cycles, P32X_EVENT_HINT, after);
}
