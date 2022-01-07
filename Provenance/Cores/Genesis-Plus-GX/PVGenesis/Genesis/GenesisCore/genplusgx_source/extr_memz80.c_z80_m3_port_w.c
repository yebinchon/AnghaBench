
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int cycles; } ;
struct TYPE_3__ {int ym2413; } ;


 int SN76489_Write (int ,unsigned char) ;
 TYPE_2__ Z80 ;
 TYPE_1__ config ;
 int fm_write (int ,unsigned int,unsigned char) ;
 int vdp_sms_ctrl_w (unsigned char) ;
 int vdp_z80_data_w (unsigned char) ;
 int z80_unused_port_w (unsigned int,unsigned char) ;

void z80_m3_port_w(unsigned int port, unsigned char data)
{
  switch (port & 0xC1)
  {
    case 0x00:
    case 0x01:
    {
      z80_unused_port_w(port, data);
      return;
    }

    case 0x40:
    case 0x41:
    {
      SN76489_Write(Z80.cycles, data);
      return;
    }

    case 0x80:
    {
      vdp_z80_data_w(data);
      return;
    }

    case 0x81:
    {
      vdp_sms_ctrl_w(data);
      return;
    }

    default:
    {
      if (!(port & 4) && (config.ym2413 & 1))
      {
        fm_write(Z80.cycles, port & 3, data);
        return;
      }

      z80_unused_port_w(port & 0xFF, data);
      return;
    }
  }
}
