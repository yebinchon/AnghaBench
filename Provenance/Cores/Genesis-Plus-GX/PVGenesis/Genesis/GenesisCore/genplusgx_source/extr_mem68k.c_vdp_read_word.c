
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16 ;
typedef scalar_t__ address ;
struct TYPE_4__ {unsigned int pc; int cycles; TYPE_1__* memory_map; } ;
struct TYPE_3__ {scalar_t__ base; } ;


 TYPE_2__ m68k ;
 unsigned int m68k_lockup_r_16 (unsigned int) ;
 unsigned int m68k_read_bus_16 (unsigned int) ;
 int vdp_68k_ctrl_r (int ) ;
 unsigned int vdp_68k_data_r () ;
 unsigned int vdp_hvc_r (int ) ;

unsigned int vdp_read_word(unsigned int address)
{
  switch (address & 0xFC)
  {
    case 0x00:
    {
      return vdp_68k_data_r();
    }

    case 0x04:
    {
      unsigned int data = vdp_68k_ctrl_r(m68k.cycles) & 0x3FF;


      address = m68k.pc;
      data |= (*(uint16 *)(m68k.memory_map[((address)>>16)&0xff].base + ((address) & 0xffff)) & 0xFC00);

      return data;
    }

    case 0x08:
    case 0x0C:
    {
      return vdp_hvc_r(m68k.cycles);
    }

    case 0x18:
    case 0x1C:
    {
      return m68k_read_bus_16(address);
    }

    default:
    {
      return m68k_lockup_r_16(address);
    }
  }
}
