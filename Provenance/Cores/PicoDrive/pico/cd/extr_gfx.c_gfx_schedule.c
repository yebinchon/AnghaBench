
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int* s68k_regs; } ;
struct TYPE_3__ {int y_step; } ;


 int PCD_EVENT_GFX ;
 TYPE_2__* Pico_mcd ;
 int UPDATE_CYCLES ;
 TYPE_1__ gfx ;
 int pcd_event_schedule_s68k (int ,int) ;

__attribute__((used)) static void gfx_schedule(void)
{
  int w, h, cycles;
  int y_step;

  w = (Pico_mcd->s68k_regs[0x62] << 8) | Pico_mcd->s68k_regs[0x63];
  h = (Pico_mcd->s68k_regs[0x64] << 8) | Pico_mcd->s68k_regs[0x65];

  cycles = 5 * w * h;
  if (cycles > UPDATE_CYCLES)
    y_step = (UPDATE_CYCLES + 5 * w - 1) / (5 * w);
  else
    y_step = h;

  gfx.y_step = y_step;
  pcd_event_schedule_s68k(PCD_EVENT_GFX, 5 * w * y_step);
}
