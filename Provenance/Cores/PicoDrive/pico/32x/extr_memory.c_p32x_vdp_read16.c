
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int* vdp_regs; int vdp_fbcr_fake; } ;


 int P32XV_HBLK ;
 int P32XV_nFEN ;
 TYPE_1__ Pico32x ;

__attribute__((used)) static u32 p32x_vdp_read16(u32 a)
{
  u32 d;
  a &= 0x0e;

  d = Pico32x.vdp_regs[a / 2];
  if (a == 0x0a) {




    Pico32x.vdp_fbcr_fake++;
    if (Pico32x.vdp_fbcr_fake & 4)
      d |= P32XV_HBLK;
    if ((Pico32x.vdp_fbcr_fake & 7) == 0)
      d |= P32XV_nFEN;
  }
  return d;
}
