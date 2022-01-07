
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int* fcr; int pages; int mapper; } ;
struct TYPE_7__ {scalar_t__ rom; } ;
struct TYPE_6__ {int mapper; int* fcr; int pages; } ;
struct TYPE_5__ {int* fcr; int mapper; int pages; scalar_t__ rom; } ;







 int SYSTEM_SMS ;
 TYPE_4__ bios_rom ;
 TYPE_3__ cart ;
 TYPE_2__ cart_rom ;
 int* io_reg ;
 int mapper_reset () ;
 TYPE_1__ slot ;
 int system_hw ;
 int* work_ram ;
 scalar_t__* z80_readmap ;

void sms_cart_reset(void)
{

  bios_rom.fcr[0] = 0;
  bios_rom.fcr[1] = 0;
  bios_rom.fcr[2] = 1;
  bios_rom.fcr[3] = 2;


  switch (cart_rom.mapper)
  {
    case 129:
    case 128:
      cart_rom.fcr[0] = 0;
      cart_rom.fcr[1] = 0;
      cart_rom.fcr[2] = 1;
      cart_rom.fcr[3] = 2;
      break;

    case 132:
    case 131:
    case 130:
      cart_rom.fcr[0] = 0;
      cart_rom.fcr[1] = 0;
      cart_rom.fcr[2] = 0;
      cart_rom.fcr[3] = 0;
      break;

    default:
      cart_rom.fcr[0] = 0;
      cart_rom.fcr[1] = 0;
      cart_rom.fcr[2] = 1;
      cart_rom.fcr[3] = 0;
      break;
  }


  if (bios_rom.pages > 1)
  {

    slot.rom = cart.rom + 0x400000;
    slot.fcr = bios_rom.fcr;
    slot.mapper = bios_rom.mapper;
    slot.pages = bios_rom.pages;
  }
  else
  {

    slot.rom = cart.rom;
    slot.fcr = cart_rom.fcr;
    slot.mapper = cart_rom.mapper;
    slot.pages = cart_rom.pages;


    if (system_hw & SYSTEM_SMS)
    {
      work_ram[0] = 0xA8;
    }
  }


  io_reg[0x0E] = bios_rom.pages ? 0xE0 : 0xA8;


  mapper_reset();


  if (bios_rom.pages == 1)
  {

    z80_readmap[0] = cart.rom + 0x400000;
  }
}
