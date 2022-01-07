
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ poll_cnt; scalar_t__ m68krcycles_done; } ;
typedef TYPE_1__ SH2 ;


 int p32x_sync_other_sh2 (TYPE_1__*,scalar_t__) ;
 int sh2_cycles_done (TYPE_1__*) ;

__attribute__((used)) static void sh2s_sync_on_read(SH2 *sh2)
{
  int cycles;
  if (sh2->poll_cnt != 0)
    return;

  cycles = sh2_cycles_done(sh2);
  if (cycles > 600)
    p32x_sync_other_sh2(sh2, sh2->m68krcycles_done + cycles / 3);
}
