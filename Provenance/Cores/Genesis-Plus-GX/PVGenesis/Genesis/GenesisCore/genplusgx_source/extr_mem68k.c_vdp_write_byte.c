
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cycles; } ;


 int SN76489_Write (int ,unsigned int) ;
 TYPE_1__ m68k ;
 int m68k_lockup_w_8 (unsigned int,unsigned int) ;
 int m68k_unused_8_w (unsigned int,unsigned int) ;
 int vdp_68k_ctrl_w (unsigned int) ;
 int vdp_68k_data_w (unsigned int) ;
 int vdp_test_w (unsigned int) ;

void vdp_write_byte(unsigned int address, unsigned int data)
{
  switch (address & 0xFC)
  {
    case 0x00:
    {
      vdp_68k_data_w(data << 8 | data);
      return;
    }

    case 0x04:
    {
      vdp_68k_ctrl_w(data << 8 | data);
      return;
    }

    case 0x10:
    case 0x14:
    {
      if (address & 1)
      {
        SN76489_Write(m68k.cycles, data);
        return;
      }
      m68k_unused_8_w(address, data);
      return;
    }

    case 0x18:
    {
      m68k_unused_8_w(address, data);
      return;
    }

    case 0x1C:
    {
      vdp_test_w(data << 8 | data);
      return;
    }

    default:
    {
      m68k_lockup_w_8(address, data);
      return;
    }
  }
}
