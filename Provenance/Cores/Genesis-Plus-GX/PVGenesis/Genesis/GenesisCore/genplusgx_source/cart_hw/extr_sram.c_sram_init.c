
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int T_SRAM ;
struct TYPE_10__ {int romsize; TYPE_1__* rom; } ;
struct TYPE_9__ {int realchecksum; int checksum; int international; int product; int ROMType; } ;
struct TYPE_8__ {int detected; int start; int end; int on; struct TYPE_8__* sram; int crc; } ;


 int READ_BYTE (TYPE_1__*,int) ;
 void* READ_WORD_LONG (TYPE_1__*,int) ;
 TYPE_5__ cart ;
 int crc32 (int ,TYPE_1__*,int) ;
 int memset (TYPE_1__*,int,int) ;
 TYPE_2__ rominfo ;
 TYPE_1__ sram ;
 int * strstr (int ,char*) ;

void sram_init()
{
  memset(&sram, 0, sizeof (T_SRAM));


  if (cart.romsize > 0x800000) return;
  sram.sram = cart.rom + 0x800000;


  memset(sram.sram, 0xFF, 0x10000);
  sram.crc = crc32(0, sram.sram, 0x10000);


  if ((READ_BYTE(cart.rom,0x1b0) == 0x52) && (READ_BYTE(cart.rom,0x1b1) == 0x41))
  {

    sram.detected = 1;


    sram.start = READ_WORD_LONG(cart.rom, 0x1b4);
    sram.end = READ_WORD_LONG(cart.rom, 0x1b8);


    if (strstr(rominfo.product,"T-26013") != ((void*)0))
    {

      sram.start = 0x200001;
      sram.end = 0x203fff;
    }


    else if ((sram.start > sram.end) || ((sram.end - sram.start) >= 0x10000))
    {
      sram.end = sram.start + 0xffff;
    }


    sram.on = 1;
  }
  else
  {

    if (strstr(rominfo.product,"T-50086") != ((void*)0))
    {

      sram.on = 1;
      sram.start = 0x200001;
      sram.end = 0x203fff;
    }
    else if (strstr(rominfo.product,"ACLD007") != ((void*)0))
    {

      sram.on = 1;
      sram.start = 0x200001;
      sram.end = 0x200fff;
    }
    else if (strstr(rominfo.product,"T-50286") != ((void*)0))
    {

      sram.on = 1;
      sram.start = 0x200001;
      sram.end = 0x203fff;
    }
    else if (((rominfo.realchecksum == 0xaeaa) || (rominfo.realchecksum == 0x8dba)) &&
             (rominfo.checksum == 0x8104))
    {

      sram.on = 1;
      sram.start = 0x400001;
      sram.end = 0x40ffff;
    }
    else if ((strstr(rominfo.ROMType,"SF") != ((void*)0)) && (strstr(rominfo.product,"001") != ((void*)0)))
    {

      sram.on = 1;
      if (rominfo.checksum == 0x3e08)
      {

        sram.start = 0x3c0001;
        sram.end = 0x3cffff;
      }
      else
      {

        sram.start = 0x400001;
        sram.end = 0x40ffff;
      }
    }
    else if ((strstr(rominfo.ROMType,"SF") != ((void*)0)) && (strstr(rominfo.product,"004") != ((void*)0)))
    {

      sram.on = 1;
      sram.start = 0x200001;
      sram.end = 0x203fff;
    }
    else if (strstr(rominfo.international,"SONIC & KNUCKLES") != ((void*)0))
    {

      if (cart.romsize == 0x400000)
      {

        sram.on = 1;
        sram.start = 0x200001;
        sram.end = 0x203fff;
      }
    }


    else if (strstr(rominfo.product,"T-113016") != ((void*)0))
    {

      sram.on = 0;
    }
    else if (strstr(rominfo.international,"SONIC THE HEDGEHOG 2") != ((void*)0))
    {


      sram.on = 0;
    }


    else if (cart.romsize <= 0x200000)
    {

      sram.start = 0x200000;
      sram.end = 0x20ffff;
      sram.on = 1;
    }
  }
}
