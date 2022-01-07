
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int romsize; int rom; } ;


 int Byteswap (int ,int ,int ) ;
 int EL_STATUS ;
 TYPE_1__ Pico ;
 unsigned int crc32 (int ,int ,int ) ;
 int elprintf (int ,char*) ;

__attribute__((used)) static unsigned int rom_crc32(void)
{
  unsigned int crc;
  elprintf(EL_STATUS, "caclulating CRC32..");


  Byteswap(Pico.rom, Pico.rom, Pico.romsize);
  crc = crc32(0, Pico.rom, Pico.romsize);
  Byteswap(Pico.rom, Pico.rom, Pico.romsize);
  return crc;
}
