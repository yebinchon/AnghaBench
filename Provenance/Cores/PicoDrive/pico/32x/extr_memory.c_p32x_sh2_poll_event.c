
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int state; int m68krcycles_done; scalar_t__ poll_cnt; scalar_t__ poll_cycles; scalar_t__ poll_addr; } ;
typedef TYPE_1__ SH2 ;


 int EL_32X ;
 int EVT_POLL_END ;
 int elprintf_sh2 (TYPE_1__*,int ,char*,int,int) ;
 int pevt_log_sh2_o (TYPE_1__*,int ) ;

void p32x_sh2_poll_event(SH2 *sh2, u32 flags, u32 m68k_cycles)
{
  if (sh2->state & flags) {
    elprintf_sh2(sh2, EL_32X, "state: %02x->%02x", sh2->state,
      sh2->state & ~flags);

    if (sh2->m68krcycles_done < m68k_cycles)
      sh2->m68krcycles_done = m68k_cycles;

    pevt_log_sh2_o(sh2, EVT_POLL_END);
  }

  sh2->state &= ~flags;
  sh2->poll_addr = sh2->poll_cycles = sh2->poll_cnt = 0;
}
