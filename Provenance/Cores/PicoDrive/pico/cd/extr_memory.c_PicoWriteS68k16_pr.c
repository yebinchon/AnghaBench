
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {size_t bank; } ;
struct TYPE_4__ {int** pcm_ram_b; TYPE_1__ pcm; } ;


 int EL_CDREGS ;
 TYPE_2__* Pico_mcd ;
 int SekPcS68k ;
 int elprintf (int ,char*,int,int,int ) ;
 int pcd_pcm_write (int,int) ;
 int s68k_reg_write16 (int,int) ;
 int s68k_unmapped_write16 (int,int) ;

__attribute__((used)) static void PicoWriteS68k16_pr(u32 a, u32 d)
{

  if ((a & 0xfe00) == 0x8000) {
    a &= 0x1fe;
    elprintf(EL_CDREGS, "s68k_regs w16: [%02x] %04x @%06x", a, d, SekPcS68k);
    s68k_reg_write16(a, d);
    return;
  }


  if ((a & 0x8000) == 0x0000) {
    a &= 0x7fff;
    if (a >= 0x2000)
      Pico_mcd->pcm_ram_b[Pico_mcd->pcm.bank][(a>>1)&0xfff] = d;
    else if (a < 0x12)
      pcd_pcm_write(a>>1, d & 0xff);
    return;
  }

  s68k_unmapped_write16(a, d);
}
