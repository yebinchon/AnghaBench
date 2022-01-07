
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_6__ {int rom; } ;
struct TYPE_5__ {unsigned int pages; int* fcr; scalar_t__ mapper; int * rom; } ;
struct TYPE_4__ {int * sram; } ;


 int CHEATS_UPDATE () ;
 scalar_t__ MAPPER_CODIES ;
 scalar_t__ MAPPER_MULTI ;
 scalar_t__ MAPPER_SEGA ;
 TYPE_3__ cart ;
 TYPE_2__ slot ;
 TYPE_1__ sram ;
 int * work_ram ;
 int ** z80_readmap ;
 int ** z80_writemap ;

__attribute__((used)) static void mapper_16k_w(int offset, unsigned int data)
{
  int i;


  uint8 page = data % slot.pages;


  if ((slot.fcr[0] & 0x03) && (slot.mapper == MAPPER_SEGA))
  {
    page = (page + ((4 - (slot.fcr[0] & 0x03)) << 3)) % slot.pages;
  }


  slot.fcr[offset] = data;

  switch (offset)
  {
    case 0:
    {
      if (data & 0x08)
      {

        for (i = 0x20; i < 0x30; i++)
        {
          z80_readmap[i] = z80_writemap[i] = &sram.sram[((data & 0x04) << 12) + ((i & 0x0F) << 10)];
        }
      }
      else
      {

        page = slot.fcr[3] % slot.pages;


        if ((data & 0x03) && (slot.mapper == MAPPER_SEGA))
        {
          page = (page + ((4 - (data & 0x03)) << 3)) % slot.pages;
        }


        for (i = 0x20; i < 0x30; i++)
        {
          z80_readmap[i] = &slot.rom[(page << 14) | ((i & 0x0F) << 10)];
          z80_writemap[i] = cart.rom + 0x510000;
        }
      }

      if (data & 0x10)
      {

        for (i = 0x30; i < 0x40; i++)
        {
          z80_readmap[i] = z80_writemap[i] = &sram.sram[(i & 0x0F) << 10];
        }
      }
      else
      {

        for (i = 0x30; i < 0x40; i++)
        {
          z80_readmap[i] = z80_writemap[i] = &work_ram[(i & 0x07) << 10];
        }
      }
      break;
    }

    case 1:
    {

      if ((slot.mapper == MAPPER_CODIES) || (slot.mapper == MAPPER_MULTI))
      {
        z80_readmap[0] = &slot.rom[(page << 14)];
      }

      for (i = 0x01; i < 0x10; i++)
      {
        z80_readmap[i] = &slot.rom[(page << 14) | ((i & 0x0F) << 10)];
      }
      break;
    }

    case 2:
    {
      for (i = 0x10; i < 0x20; i++)
      {
        z80_readmap[i] = &slot.rom[(page << 14) | ((i & 0x0F) << 10)];
      }


      if (slot.mapper == MAPPER_CODIES)
      {
        if (data & 0x80)
        {

          for (i = 0x28; i < 0x30; i++)
          {
            z80_readmap[i] = z80_writemap[i] = &sram.sram[(i & 0x0F) << 10];
          }
        }
        else
        {

          page = slot.fcr[3] % slot.pages;


          for (i = 0x28; i < 0x30; i++)
          {
            z80_readmap[i] = &slot.rom[(page << 14) | ((i & 0x0F) << 10)];
            z80_writemap[i] = cart.rom + 0x510000;
          }
        }
      }
      break;
    }

    case 3:
    {

      if ((slot.fcr[0] & 0x08)) break;


      for (i = 0x20; i < 0x28; i++)
      {
        z80_readmap[i] = &slot.rom[(page << 14) | ((i & 0x0F) << 10)];
      }


      if ((slot.mapper == MAPPER_CODIES) && (slot.fcr[2] & 0x80)) break;


      for (i = 0x28; i < 0x30; i++)
      {
        z80_readmap[i] = &slot.rom[(page << 14) | ((i & 0x0F) << 10)];
      }
      break;
    }
  }





}
