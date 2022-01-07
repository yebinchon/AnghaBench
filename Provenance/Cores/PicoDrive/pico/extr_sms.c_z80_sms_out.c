
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char io_ctl; } ;
struct TYPE_4__ {TYPE_1__ ms; } ;


 int EL_IO ;
 int POPT_EN_PSG ;
 TYPE_2__ Pico ;
 int PicoOpt ;
 int SN76496Write (unsigned char) ;
 int elprintf (int ,char*,unsigned short,unsigned char) ;
 int vdp_ctl_write (unsigned char) ;
 int vdp_data_write (unsigned char) ;

__attribute__((used)) static void z80_sms_out(unsigned short a, unsigned char d)
{
  elprintf(EL_IO, "z80 port %04x write %02x", a, d);
  a &= 0xc1;
  switch (a)
  {
    case 0x01:
      Pico.ms.io_ctl = d;
      break;

    case 0x40:
    case 0x41:
      if (PicoOpt & POPT_EN_PSG)
        SN76496Write(d);
      break;

    case 0x80:
      vdp_data_write(d);
      break;

    case 0x81:
      vdp_ctl_write(d);
      break;
  }
}
