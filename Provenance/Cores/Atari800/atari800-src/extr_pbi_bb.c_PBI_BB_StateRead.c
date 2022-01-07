
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BB_RAM_SIZE ;
 scalar_t__ PBI_BB_enabled ;
 int StateSav_ReadFNAME (int ) ;
 int StateSav_ReadINT (scalar_t__*,int) ;
 int StateSav_ReadUBYTE (int *,int) ;
 int bb_PCR ;
 int * bb_ram ;
 scalar_t__ bb_ram_bank_offset ;
 int bb_rom_bank ;
 int bb_rom_filename ;
 scalar_t__ bb_rom_high_bit ;
 int bb_scsi_disk_filename ;
 int init_bb () ;

void PBI_BB_StateRead(void)
{
 StateSav_ReadINT(&PBI_BB_enabled, 1);
 if (PBI_BB_enabled) {
  StateSav_ReadFNAME(bb_scsi_disk_filename);
  StateSav_ReadFNAME(bb_rom_filename);
  init_bb();
  StateSav_ReadINT(&bb_ram_bank_offset, 1);
  StateSav_ReadUBYTE(bb_ram, BB_RAM_SIZE);
  StateSav_ReadUBYTE(&bb_rom_bank, 1);
  StateSav_ReadINT(&bb_rom_high_bit, 1);
  StateSav_ReadUBYTE(&bb_PCR, 1);
 }
}
