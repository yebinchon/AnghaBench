
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_7__ {scalar_t__ poll_addr; int poll_cycles; scalar_t__ state; scalar_t__ poll_cnt; } ;
typedef TYPE_1__ SH2 ;


 int EL_32X ;
 int EVT_POLL_START ;
 int elprintf_sh2 (TYPE_1__*,int ,char*,scalar_t__,scalar_t__) ;
 int pevt_log_sh2 (TYPE_1__*,int ) ;
 int sh2_cycles_left (TYPE_1__*) ;
 int sh2_end_run (TYPE_1__*,int) ;

__attribute__((used)) static void sh2_poll_detect(SH2 *sh2, u32 a, u32 flags, int maxcnt)
{
  int cycles_left = sh2_cycles_left(sh2);

  if (a == sh2->poll_addr && sh2->poll_cycles - cycles_left <= 10) {
    if (sh2->poll_cnt++ > maxcnt) {
      if (!(sh2->state & flags))
        elprintf_sh2(sh2, EL_32X, "state: %02x->%02x",
          sh2->state, sh2->state | flags);

      sh2->state |= flags;
      sh2_end_run(sh2, 1);
      pevt_log_sh2(sh2, EVT_POLL_START);
      return;
    }
  }
  else
    sh2->poll_cnt = 0;
  sh2->poll_addr = a;
  sh2->poll_cycles = cycles_left;
}
