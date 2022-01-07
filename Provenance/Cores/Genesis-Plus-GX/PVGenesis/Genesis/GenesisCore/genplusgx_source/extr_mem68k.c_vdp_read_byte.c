
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int address ;
struct TYPE_4__ {unsigned int pc; int cycles; TYPE_1__* memory_map; } ;
struct TYPE_3__ {int base; } ;


 int READ_BYTE (int ,int ) ;
 TYPE_2__ m68k ;
 unsigned int m68k_lockup_r_8 (unsigned int) ;
 unsigned int m68k_read_bus_8 (unsigned int) ;
 int vdp_68k_ctrl_r (int ) ;
 int vdp_68k_data_r () ;
 int vdp_hvc_r (int ) ;

unsigned int vdp_read_byte(unsigned int address)
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
      unsigned int data = (vdp_68k_ctrl_r(m68k.cycles) >> 8) & 3;


      address = m68k.pc;
      data |= (READ_BYTE(m68k.memory_map[((address)>>16)&0xff].base, (address) & 0xffff) & 0xFC);

      return data;
    }

    case 0x05:
    {
      return (vdp_68k_ctrl_r(m68k.cycles) & 0xFF);
    }

    case 0x08:
    case 0x0C:
    {
      return (vdp_hvc_r(m68k.cycles) >> 8);
    }

    case 0x09:
    case 0x0D:
    {
      return (vdp_hvc_r(m68k.cycles) & 0xFF);
    }

    case 0x18:
    case 0x19:
    case 0x1C:
    case 0x1D:
    {
      return m68k_read_bus_8(address);
    }

    default:
    {
      return m68k_lockup_r_8(address);
    }
  }
}
