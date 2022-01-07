
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_4__ {int* vdp_regs; } ;
struct TYPE_3__ {int** dram; } ;
typedef int SH2 ;


 int P32XV_FS ;
 int P32XV_nFEN ;
 int P32X_EVENT_FILLEND ;
 TYPE_2__ Pico32x ;
 TYPE_1__* Pico32xMem ;
 int p32x_event_schedule_sh2 (int *,int ,int) ;
 int p32x_vdp_write8 (int,int) ;

__attribute__((used)) static void p32x_vdp_write16(u32 a, u32 d, SH2 *sh2)
{
  a &= 0x0e;
  if (a == 6) {
    Pico32x.vdp_regs[6 / 2] = d;
    return;
  }
  if (a == 8) {
    u16 *dram = Pico32xMem->dram[(Pico32x.vdp_regs[0x0a/2] & P32XV_FS) ^ 1];
    int len = Pico32x.vdp_regs[4 / 2] + 1;
    int len1 = len;
    a = Pico32x.vdp_regs[6 / 2];
    while (len1--) {
      dram[a] = d;
      a = (a & 0xff00) | ((a + 1) & 0xff);
    }
    Pico32x.vdp_regs[0x06 / 2] = a;
    Pico32x.vdp_regs[0x08 / 2] = d;
    if (sh2 != ((void*)0) && len > 4) {
      Pico32x.vdp_regs[0x0a / 2] |= P32XV_nFEN;

      p32x_event_schedule_sh2(sh2, P32X_EVENT_FILLEND, 3 + len);
    }
    return;
  }

  p32x_vdp_write8(a | 1, d);
}
