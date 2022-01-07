
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int m68krcycles_done; int state; int pc; } ;
typedef TYPE_1__ SH2 ;


 int C_M68K_TO_SH2 (TYPE_1__,int) ;
 scalar_t__ C_SH2_TO_M68K (TYPE_1__,int) ;
 int EL_32X ;
 int EVT_RUN_END ;
 int EVT_RUN_START ;
 int POPT_EN_DRC ;
 int PicoOpt ;
 int SH2_STATE_RUN ;
 int elprintf_sh2 (TYPE_1__*,int ,char*,int ,int,...) ;
 int pevt_log_sh2_o (TYPE_1__*,int ) ;
 int sh2_execute (TYPE_1__*,int,int) ;

__attribute__((used)) static inline void run_sh2(SH2 *sh2, int m68k_cycles)
{
  int cycles, done;

  pevt_log_sh2_o(sh2, EVT_RUN_START);
  sh2->state |= SH2_STATE_RUN;
  cycles = C_M68K_TO_SH2(*sh2, m68k_cycles);
  elprintf_sh2(sh2, EL_32X, "+run %u %d @%08x",
    sh2->m68krcycles_done, cycles, sh2->pc);

  done = sh2_execute(sh2, cycles, PicoOpt & POPT_EN_DRC);

  sh2->m68krcycles_done += C_SH2_TO_M68K(*sh2, done);
  sh2->state &= ~SH2_STATE_RUN;
  pevt_log_sh2_o(sh2, EVT_RUN_END);
  elprintf_sh2(sh2, EL_32X, "-run %u %d",
    sh2->m68krcycles_done, done);
}
