
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cycles; } ;


 TYPE_1__ Z80 ;
 int vdp_68k_ctrl_r (int ) ;
 int vdp_68k_data_r () ;
 int vdp_hvc_r (int ) ;
 unsigned int zbank_lockup_r (unsigned int) ;
 unsigned int zbank_unused_r (unsigned int) ;

unsigned int zbank_read_vdp(unsigned int address)
{
  switch (address & 0xFD)
  {
    case 0x00:
    {
      return (vdp_68k_data_r() >> 8);
    }

    case 0x01:
    {
      return (vdp_68k_data_r() & 0xFF);
    }

    case 0x04:
    {
      return (((vdp_68k_ctrl_r(Z80.cycles) >> 8) & 3) | 0xFC);
    }

    case 0x05:
    {
      return (vdp_68k_ctrl_r(Z80.cycles) & 0xFF);
    }

    case 0x08:
    case 0x0C:
    {
      return (vdp_hvc_r(Z80.cycles) >> 8);
    }

    case 0x09:
    case 0x0D:
    {
      return (vdp_hvc_r(Z80.cycles) & 0xFF);
    }

    case 0x18:
    case 0x19:
    case 0x1C:
    case 0x1D:
    {
      return zbank_unused_r(address);
    }

    default:
    {
      return zbank_lockup_r(address);
    }
  }
}
