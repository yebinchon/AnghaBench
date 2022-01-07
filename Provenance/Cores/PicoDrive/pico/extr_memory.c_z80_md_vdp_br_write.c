
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int z80_bank68k; } ;
struct TYPE_4__ {TYPE_1__ m; } ;


 int EL_ANOMALY ;
 int POPT_EN_PSG ;
 TYPE_2__ Pico ;
 int PicoOpt ;
 int SN76496Write (unsigned char) ;
 int elprintf (int ,char*,unsigned int,unsigned char) ;

__attribute__((used)) static void z80_md_vdp_br_write(unsigned int a, unsigned char data)
{

  if ((a&0xfff9) == 0x7f11)
  {
    if (PicoOpt & POPT_EN_PSG)
      SN76496Write(data);
    return;
  }

  if ((a>>8) == 0x60)
  {
    Pico.m.z80_bank68k >>= 1;
    Pico.m.z80_bank68k |= data << 8;
    Pico.m.z80_bank68k &= 0x1ff;
    return;
  }

  elprintf(EL_ANOMALY, "z80 invalid w8 [%06x] %02x", a, data);
}
