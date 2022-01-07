
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_8__ {int pages; int mapper; scalar_t__ fcr; } ;
struct TYPE_7__ {int romsize; scalar_t__ rom; } ;
struct TYPE_6__ {int pages; int mapper; scalar_t__ fcr; } ;
struct TYPE_5__ {int pages; int mapper; scalar_t__ fcr; scalar_t__ rom; } ;


 TYPE_4__ bios_rom ;
 TYPE_3__ cart ;
 TYPE_2__ cart_rom ;
 int mapper_reset () ;
 int memcpy (scalar_t__,scalar_t__,int) ;
 TYPE_1__ slot ;
 scalar_t__* z80_readmap ;

void sms_cart_switch(uint8 mode)
{

  slot.pages = 0;


  if (mode & 0x40)
  {

    if (cart_rom.pages)
    {

      slot.rom = cart.rom;
      slot.fcr = cart_rom.fcr;
      slot.mapper = cart_rom.mapper;
      slot.pages = cart_rom.pages;
    }
  }
  else
  {

    if (mode & 0x08)
    {

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
      }
    }


    if (!bios_rom.pages)
    {

      if (cart.romsize <= 0x100000)
      {

        memcpy(cart.rom + 0x400000, cart.rom, cart.romsize);
        memcpy(bios_rom.fcr, cart_rom.fcr, 4);
        bios_rom.mapper = cart_rom.mapper;
        bios_rom.pages = cart_rom.pages;


        cart_rom.pages = 0;
      }
    }
  }


  mapper_reset();


  if ((bios_rom.pages == 1) && ((mode & 0x48) == 0x08))
  {

    z80_readmap[0] = cart.rom + 0x400000;
  }
}
