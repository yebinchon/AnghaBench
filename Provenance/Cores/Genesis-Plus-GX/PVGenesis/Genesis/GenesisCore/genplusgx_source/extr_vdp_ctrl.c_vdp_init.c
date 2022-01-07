
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYSTEM_MD ;
 int SYSTEM_PBC ;
 int lines_per_frame ;
 void* m68k_set_irq ;
 void* m68k_set_irq_delay ;
 void* set_irq_line ;
 void* set_irq_line_delay ;
 int system_hw ;
 scalar_t__ vdp_pal ;
 void* z80_set_irq_line ;

void vdp_init(void)
{

  lines_per_frame = vdp_pal ? 313: 262;


  if ((system_hw & SYSTEM_PBC) == SYSTEM_MD)
  {

    set_irq_line = m68k_set_irq;
    set_irq_line_delay = m68k_set_irq_delay;
  }
  else
  {

    set_irq_line = z80_set_irq_line;
    set_irq_line_delay = z80_set_irq_line;
  }
}
