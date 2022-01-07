
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cycles; } ;


 TYPE_1__ Z80 ;
 unsigned char io_z80_read (unsigned int) ;
 unsigned char vdp_z80_ctrl_r (int ) ;
 unsigned char vdp_z80_data_r () ;
 unsigned char z80_unused_port_r (unsigned int) ;

unsigned char z80_sg_port_r(unsigned int port)
{
  switch (port & 0xC1)
  {
    case 0x80:
    {
      return vdp_z80_data_r();
    }

    case 0x81:
    {
      return vdp_z80_ctrl_r(Z80.cycles);
    }

    case 0xC0:
    case 0xC1:
    {
      return io_z80_read(port & 1);
    }

    default:
    {
      return z80_unused_port_r(port);
    }
  }
}
