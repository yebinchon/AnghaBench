
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ANTIC_GetByte ;
 int ANTIC_PutByte ;
 int * ANTIC_xe_ptr ;
 int AllocMapRAM () ;
 int AllocXEMemory () ;
 int Atari800_Coldstart () ;

 int Atari800_MACHINE_800 ;
 int Atari800_MACHINE_XLXE ;
 int Atari800_machine_type ;
 int AxlonPutByte ;
 int CARTRIDGE_GetByte ;
 int CARTRIDGE_PutByte ;
 int ESC_PatchOS () ;
 void* FALSE ;
 int GTIA_GRACTL ;
 int GTIA_GetByte ;
 int GTIA_PutByte ;
 scalar_t__* GTIA_TRIG ;
 scalar_t__* GTIA_TRIG_latch ;
 int MEMORY_SetHARDWARE (int,int) ;
 int MEMORY_SetRAM (int,int const) ;
 int MEMORY_SetROM (int const,int const) ;
 int MEMORY_axlon_0f_mirror ;
 int MEMORY_axlon_num_banks ;
 void* MEMORY_cartA0BF_enabled ;
 int MEMORY_dFillMem (int const,int,int const) ;
 scalar_t__ MEMORY_mem ;
 int MEMORY_mosaic_num_banks ;
 int MEMORY_os ;
 int MEMORY_ram_size ;
 int * MEMORY_readmap ;
 int * MEMORY_writemap ;
 int MosaicPutByte ;
 int PBI_D1GetByte ;
 int PBI_D1PutByte ;
 int PBI_D6GetByte ;
 int PBI_D6PutByte ;
 int PBI_D7GetByte ;
 int PBI_D7PutByte ;
 int PIA_GetByte ;
 int PIA_PutByte ;
 int POKEY_GetByte ;
 int POKEY_PutByte ;
 int alloc_axlon_memory () ;
 int alloc_mosaic_memory () ;
 scalar_t__ axlon_curbank ;
 void* cart809F_enabled ;
 int memcpy (scalar_t__,int ,int const) ;
 int mosaic_curbank ;

void MEMORY_InitialiseMachine(void)
{
 int const os_size = Atari800_machine_type == Atari800_MACHINE_800 ? 0x2800
                     : Atari800_machine_type == 128 ? 0x800
                     : 0x4000;
 int const os_rom_start = 0x10000 - os_size;
 ANTIC_xe_ptr = ((void*)0);
 cart809F_enabled = FALSE;
 MEMORY_cartA0BF_enabled = FALSE;
 if (Atari800_machine_type == Atari800_MACHINE_XLXE) {
  GTIA_TRIG[3] = 0;
  if (GTIA_GRACTL & 4)
   GTIA_TRIG_latch[3] = 0;
 }
 memcpy(MEMORY_mem + os_rom_start, MEMORY_os, os_size);
 switch (Atari800_machine_type) {
 case 128:
  MEMORY_dFillMem(0x0000, 0x00, 0xf800);
  MEMORY_SetRAM(0x0000, 0x3fff);
  MEMORY_SetROM(0x4000, 0xffff);

  MEMORY_SetHARDWARE(0xc000, 0xcfff);
  MEMORY_SetHARDWARE(0xd400, 0xd4ff);
  MEMORY_SetHARDWARE(0xe800, 0xefff);
  break;
 default:
  {
   int const base_ram = MEMORY_ram_size > 64 ? 64 * 1024 : MEMORY_ram_size * 1024;
   int const hole_end = (os_rom_start < 0xd000 ? os_rom_start : 0xd000);
   int const hole_start = base_ram > hole_end ? hole_end : base_ram;
   ESC_PatchOS();
   MEMORY_dFillMem(0x0000, 0x00, hole_start);
   MEMORY_SetRAM(0x0000, hole_start - 1);
   if (hole_start < hole_end) {
    MEMORY_dFillMem(hole_start, 0xff, hole_end - hole_start);
    MEMORY_SetROM(hole_start, hole_end - 1);
   }
   if (hole_end < 0xd000)
    MEMORY_SetROM(hole_end, 0xcfff);
   MEMORY_SetROM(0xd800, 0xffff);

   MEMORY_SetHARDWARE(0xd000, 0xd7ff);
   if (Atari800_machine_type == Atari800_MACHINE_800) {
    if (MEMORY_mosaic_num_banks > 0) MEMORY_SetHARDWARE(0xff00, 0xffff);


    if (MEMORY_axlon_num_banks > 0) {
     MEMORY_SetHARDWARE(0xcf00, 0xcfff);
     if (MEMORY_axlon_0f_mirror) MEMORY_SetHARDWARE(0x0f00, 0x0fff);

    }
   }
  }
  break;
 }
 AllocXEMemory();
 alloc_axlon_memory();
 alloc_mosaic_memory();
 axlon_curbank = 0;
 mosaic_curbank = 0x3f;
 AllocMapRAM();
 Atari800_Coldstart();
}
