
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UWORD ;
typedef int UBYTE ;


 int Log_print (char*,int,int ) ;
 int MEMORY_SetRAM (int,int) ;
 int MEMORY_SetROM (int,int) ;
 int MEMORY_dFillMem (int,int,int) ;
 scalar_t__ MEMORY_mem ;
 int memcpy (scalar_t__,scalar_t__,int) ;
 int mosaic_curbank ;
 int mosaic_current_num_banks ;
 scalar_t__ mosaic_ram ;

__attribute__((used)) static void MosaicPutByte(UWORD addr, UBYTE byte)
{
 int newbank;
 if (addr < 0xffc0) return;



 newbank = addr - 0xffc0;
 if (newbank == mosaic_curbank || (newbank >= mosaic_current_num_banks && mosaic_curbank >= mosaic_current_num_banks)) return;
 if (newbank >= mosaic_current_num_banks && mosaic_curbank < mosaic_current_num_banks) {

  memcpy(mosaic_ram + mosaic_curbank*0x1000, MEMORY_mem + 0xc000,0x1000);
  MEMORY_dFillMem(0xc000, 0xff, 0x1000);
  MEMORY_SetROM(0xc000, 0xcfff);
 }
 else if (newbank < mosaic_current_num_banks && mosaic_curbank >= mosaic_current_num_banks) {

  memcpy(MEMORY_mem + 0xc000, mosaic_ram+newbank*0x1000,0x1000);
  MEMORY_SetRAM(0xc000, 0xcfff);
 }
 else {

  memcpy(mosaic_ram + mosaic_curbank*0x1000, MEMORY_mem + 0xc000, 0x1000);
  memcpy(MEMORY_mem + 0xc000, mosaic_ram + newbank*0x1000, 0x1000);
  MEMORY_SetRAM(0xc000, 0xcfff);
 }
 mosaic_curbank = newbank;
}
