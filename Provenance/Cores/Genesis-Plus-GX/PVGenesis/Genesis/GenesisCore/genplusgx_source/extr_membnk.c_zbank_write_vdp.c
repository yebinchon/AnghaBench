
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cycles; } ;


 int SN76489_Write (int ,unsigned int) ;
 TYPE_1__ Z80 ;
 int vdp_68k_ctrl_w (unsigned int) ;
 int vdp_68k_data_w (unsigned int) ;
 int vdp_test_w (unsigned int) ;
 int zbank_lockup_w (unsigned int,unsigned int) ;
 int zbank_unused_w (unsigned int,unsigned int) ;

void zbank_write_vdp(unsigned int address, unsigned int data)
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
        SN76489_Write(Z80.cycles, data);
        return;
      }
      zbank_unused_w(address, data);
      return;
    }

    case 0x18:
    {
      zbank_unused_w(address, data);
      return;
    }

    case 0x1C:
    {
      vdp_test_w(data << 8 | data);
      return;
    }

    default:
    {
      zbank_lockup_w(address, data);
      return;
    }
  }
}
