
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * vdp_regs; } ;


 int P32XV_nFEN ;
 TYPE_1__ Pico32x ;
 int SH2_STATE_VPOLL ;
 int msh2 ;
 int p32x_sh2_poll_event (int *,int ,unsigned int) ;
 int ssh2 ;

__attribute__((used)) static void fillend_event(unsigned int now)
{
  Pico32x.vdp_regs[0x0a/2] &= ~P32XV_nFEN;
  p32x_sh2_poll_event(&msh2, SH2_STATE_VPOLL, now);
  p32x_sh2_poll_event(&ssh2, SH2_STATE_VPOLL, now);
}
