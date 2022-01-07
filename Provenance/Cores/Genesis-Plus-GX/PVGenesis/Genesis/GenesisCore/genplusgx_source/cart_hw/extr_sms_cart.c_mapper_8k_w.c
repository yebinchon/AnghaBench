
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_2__ {unsigned int pages; unsigned int* fcr; int * rom; } ;


 int CHEATS_UPDATE () ;
 TYPE_1__ slot ;
 int ** z80_readmap ;

__attribute__((used)) static void mapper_8k_w(int offset, unsigned int data)
{
  int i;


  uint8 page = data % slot.pages;


  slot.fcr[offset] = data;


  switch (offset & 3)
  {
    case 0:
    {
      for (i = 0x20; i < 0x28; i++)
      {
        z80_readmap[i] = &slot.rom[(page << 13) | ((i & 0x07) << 10)];
      }
      break;
    }

    case 1:
    {
      for (i = 0x28; i < 0x30; i++)
      {
        z80_readmap[i] = &slot.rom[(page << 13) | ((i & 0x07) << 10)];
      }
      break;
    }

    case 2:
    {
      for (i = 0x10; i < 0x18; i++)
      {
        z80_readmap[i] = &slot.rom[(page << 13) | ((i & 0x07) << 10)];
      }
      break;
    }

    case 3:
    {
      for (i = 0x18; i < 0x20; i++)
      {
        z80_readmap[i] = &slot.rom[(page << 13) | ((i & 0x07) << 10)];
      }
      break;
    }
  }





}
