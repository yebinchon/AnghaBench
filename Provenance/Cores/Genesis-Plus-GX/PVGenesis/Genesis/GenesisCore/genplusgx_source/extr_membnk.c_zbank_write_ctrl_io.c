
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int cycles; } ;
struct TYPE_5__ {int (* time_w ) (unsigned int,unsigned int) ;} ;
struct TYPE_7__ {TYPE_1__ hw; } ;
struct TYPE_6__ {int bios; } ;


 TYPE_4__ Z80 ;
 TYPE_3__ cart ;
 TYPE_2__ config ;
 int gen_bankswitch_w (unsigned int) ;
 int gen_zbusreq_w (unsigned int,int ) ;
 int gen_zreset_w (unsigned int,int ) ;
 int io_68k_write (unsigned int,unsigned int) ;
 int stub1 (unsigned int,unsigned int) ;
 int zbank_lockup_w (unsigned int,unsigned int) ;
 int zbank_unused_w (unsigned int,unsigned int) ;

void zbank_write_ctrl_io(unsigned int address, unsigned int data)
{
  switch ((address >> 8) & 0xFF)
  {
    case 0x00:
    {

      if ((address & 0xE1) == 0x01)
      {
        io_68k_write((address >> 1) & 0x0F, data);
        return;
      }
      zbank_unused_w(address, data);
      return;
    }

    case 0x11:
    {
      if (!(address & 1))
      {
        gen_zbusreq_w(data & 1, Z80.cycles);
        return;
      }
      zbank_unused_w(address, data);
      return;
    }

    case 0x12:
    {
      if (!(address & 1))
      {
        gen_zreset_w(data & 1, Z80.cycles);
        return;
      }
      zbank_unused_w(address, data);
      return;
    }

    case 0x30:
    {
      cart.hw.time_w(address, data);
      return;
    }

    case 0x41:
    {
      if ((config.bios & 1) && (address & 1))
      {
        gen_bankswitch_w(data & 1);
        return;
      }
      zbank_unused_w(address, data);
      return;
    }

    case 0x10:
    case 0x20:
    case 0x40:
    case 0x44:
    case 0x50:
    {
      zbank_unused_w(address, data);
      return;
    }

    default:
    {
      zbank_lockup_w(address, data);
      return;
    }
  }
}
