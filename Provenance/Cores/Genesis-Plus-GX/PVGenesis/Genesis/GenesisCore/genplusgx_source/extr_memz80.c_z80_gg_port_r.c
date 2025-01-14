
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cycles; } ;


 int SYSTEM_GG ;
 TYPE_1__ Z80 ;
 unsigned char io_gg_read (unsigned int) ;
 unsigned char io_z80_read (unsigned int) ;
 int system_hw ;
 int vdp_hvc_r (int ) ;
 unsigned char vdp_z80_ctrl_r (int ) ;
 unsigned char vdp_z80_data_r () ;
 unsigned char z80_unused_port_r (unsigned int) ;

unsigned char z80_gg_port_r(unsigned int port)
{
  switch(port & 0xC1)
  {
    case 0x00:
    case 0x01:
    {
      port &= 0xFF;

      if (port < 0x07)
      {
        if (system_hw == SYSTEM_GG)
        {
          return io_gg_read(port);
        }
      }

      return z80_unused_port_r(port);
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
      port &= 0xFF;

      if ((port == 0xC0) || (port == 0xC1) || (port == 0xDC) || (port == 0xDD))
      {
        return io_z80_read(port & 1);
      }

      return z80_unused_port_r(port);
    }
  }
}
