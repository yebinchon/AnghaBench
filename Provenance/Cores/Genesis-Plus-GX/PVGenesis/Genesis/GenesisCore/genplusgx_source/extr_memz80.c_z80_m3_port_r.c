
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int cycles; } ;
struct TYPE_3__ {int ym2413; } ;


 unsigned char YM2413Read (unsigned int) ;
 TYPE_2__ Z80 ;
 TYPE_1__ config ;
 unsigned char io_z80_read (unsigned int) ;
 int vdp_hvc_r (int ) ;
 unsigned char vdp_z80_ctrl_r (int ) ;
 unsigned char vdp_z80_data_r () ;
 unsigned char z80_unused_port_r (unsigned int) ;

unsigned char z80_m3_port_r(unsigned int port)
{
  switch (port & 0xC1)
  {
    case 0x00:
    case 0x01:
    {
      return z80_unused_port_r(port & 0xFF);
    }

    case 0x40:
    {
      return ((vdp_hvc_r(Z80.cycles) >> 8) & 0xFF);
    }

    case 0x41:
    {
      return (vdp_hvc_r(Z80.cycles) & 0xFF);
    }

    case 0x80:
    {
      return vdp_z80_data_r();
    }

    case 0x81:
    {
      return vdp_z80_ctrl_r(Z80.cycles);
    }

    default:
    {

      if (!(port & 4) && (config.ym2413 & 1))
      {

        return YM2413Read(port & 3);
      }


      return io_z80_read(port & 1);
    }
  }
}
