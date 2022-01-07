
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int (* time_r ) (unsigned int) ;} ;
struct TYPE_4__ {TYPE_1__ hw; } ;


 TYPE_2__ cart ;
 int gen_bankswitch_r () ;
 unsigned int io_68k_read (unsigned int) ;
 unsigned int stub1 (unsigned int) ;
 unsigned int zbank_lockup_r (unsigned int) ;
 unsigned int zbank_unused_r (unsigned int) ;

unsigned int zbank_read_ctrl_io(unsigned int address)
{
  switch ((address >> 8) & 0xFF)
  {
    case 0x00:
    {
      if (!(address & 0xE0))
      {
        return (io_68k_read((address >> 1) & 0x0F));
      }
      return zbank_unused_r(address);
    }

    case 0x11:
    {
      if (address & 1)
      {
        return zbank_unused_r(address);
      }
      return 0xFF;
    }

    case 0x30:
    {
      if (cart.hw.time_r)
      {
        unsigned int data = cart.hw.time_r(address);
        if (address & 1)
        {
          return (data & 0xFF);
        }
        return (data >> 8);
      }
      return zbank_unused_r(address);
    }

    case 0x41:
    {
      if (address & 1)
      {
        return (gen_bankswitch_r() | 0xFE);
      }
      return zbank_unused_r(address);
    }

    case 0x10:
    case 0x12:
    case 0x20:
    case 0x40:
    case 0x44:
    case 0x50:
    {
      return zbank_unused_r(address);
    }

    default:
    {
      return zbank_lockup_r(address);
    }
  }
}
