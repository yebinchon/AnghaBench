
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int * rom; } ;
struct TYPE_5__ {scalar_t__ mapper; } ;
struct TYPE_4__ {int pages; int mapper; int * fcr; int * rom; } ;
 int MAPPER_SEGA ;

 scalar_t__ SYSTEM_SG ;
 TYPE_3__ cart ;
 TYPE_2__ cart_rom ;
 int mapper_16k_w (int,int ) ;
 int mapper_8k_w (int,int ) ;
 int read_mapper_93c46 ;
 int read_mapper_default ;
 int read_mapper_korea_8k ;
 int read_mapper_terebi ;
 TYPE_1__ slot ;
 scalar_t__ system_hw ;
 int * work_ram ;
 int write_mapper_93c46 ;
 int write_mapper_codies ;
 int write_mapper_korea ;
 int write_mapper_korea_16k ;
 int write_mapper_korea_8k ;
 int write_mapper_msx ;
 int write_mapper_multi ;
 int write_mapper_none ;
 int write_mapper_sega ;
 int write_mapper_terebi ;
 int ** z80_readmap ;
 int z80_readmem ;
 int ** z80_writemap ;
 int z80_writemem ;

__attribute__((used)) static void mapper_reset(void)
{
  int i;


  if (system_hw == SYSTEM_SG)
  {

    if (cart_rom.mapper == 129)
    {

      for (i = 0x30; i < 0x40; i++)
      {
        z80_readmap[i] = z80_writemap[i] = &work_ram[(i & 0x07) << 10];
      }
    }
    else
    {

      for (i = 0x30; i < 0x40; i++)
      {
        z80_readmap[i] = z80_writemap[i] = &work_ram[(i & 0x01) << 10];
      }
    }
  }
  else
  {

    for (i = 0x30; i < 0x40; i++)
    {
      z80_readmap[i] = z80_writemap[i] = &work_ram[(i & 0x07) << 10];
    }
  }


  if (!slot.pages)
  {

    for(i = 0x00; i < 0x30; i++)
    {
      z80_writemap[i] = cart.rom + 0x510000;
      z80_readmap[i] = cart.rom + 0x510400;
    }


    z80_readmem = read_mapper_default;
    z80_writemem = write_mapper_none;
    return;
  }


  if (slot.mapper < MAPPER_SEGA)
  {

    for (i = 0x00; i < 0x30; i++)
    {
      z80_readmap[i] = &slot.rom[i << 10];
      z80_writemap[i] = cart.rom + 0x510000;
    }


    if (slot.pages <= 0x20)
    {

      for (i = 0x20; i < 0x30; i++)
      {
        z80_readmap[i] = z80_writemap[i] = &work_ram[0x2000 + ((i & 0x07) << 10)];
      }
    }


    if (slot.mapper == 130)
    {

      for (i = 0x08; i < 0x10; i++)
      {
        z80_readmap[i] = z80_writemap[i] = &work_ram[0x2000 + ((i & 0x07) << 10)];
      }
    }
  }
  else
  {

    for (i = 0x00; i < 0x30; i++)
    {
      z80_readmap[i] = &slot.rom[i << 10];
      z80_writemap[i] = cart.rom + 0x510000;
    }


    if (slot.mapper & 135)
    {
      mapper_8k_w(0,slot.fcr[0]);
      mapper_8k_w(1,slot.fcr[1]);
      mapper_8k_w(2,slot.fcr[2]);
      mapper_8k_w(3,slot.fcr[3]);


      if (slot.mapper == 133)
      {

        for (i = 0x00; i < 0x08; i++)
        {
          z80_readmap[i] = &slot.rom[(0x0f << 13) | ((i & 0x07) << 10)];
        }
      }
    }
    else
    {
      mapper_16k_w(0,slot.fcr[0]);
      mapper_16k_w(1,slot.fcr[1]);
      mapper_16k_w(2,slot.fcr[2]);
      mapper_16k_w(3,slot.fcr[3]);
    }
  }


  switch (slot.mapper)
  {
    case 131:
    case 130:
    case 129:
      z80_readmem = read_mapper_default;
      z80_writemem = write_mapper_none;
      break;

    case 138:
      z80_readmem = read_mapper_default;
      z80_writemem = write_mapper_codies;
      break;

    case 137:
      z80_readmem = read_mapper_default;
      z80_writemem = write_mapper_korea;
      break;

    case 135:
      z80_readmem = read_mapper_korea_8k;
      z80_writemem = write_mapper_korea_8k;
      break;

    case 136:
      z80_readmem = read_mapper_default;
      z80_writemem = write_mapper_korea_16k;
      break;

    case 134:
    case 133:
      z80_readmem = read_mapper_default;
      z80_writemem = write_mapper_msx;
      break;

    case 132:
      z80_readmem = read_mapper_default;
      z80_writemem = write_mapper_multi;
      break;

    case 139:
      z80_readmem = read_mapper_93c46;
      z80_writemem = write_mapper_93c46;
      break;

    case 128:
      z80_readmem = read_mapper_terebi;
      z80_writemem = write_mapper_terebi;
      break;

    default:
      z80_readmem = read_mapper_default;
      z80_writemem = write_mapper_sega;
      break;
  }
}
