
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BB_RAM_SIZE ;
 scalar_t__ PBI_BB_enabled ;
 int StateSav_SaveFNAME (int ) ;
 int StateSav_SaveINT (scalar_t__*,int) ;
 int StateSav_SaveUBYTE (int *,int) ;
 int bb_PCR ;
 int * bb_ram ;
 scalar_t__ bb_ram_bank_offset ;
 int bb_rom_bank ;
 int bb_rom_filename ;
 scalar_t__ bb_rom_high_bit ;
 int bb_scsi_disk_filename ;

void PBI_BB_StateSave(void)
{
 StateSav_SaveINT(&PBI_BB_enabled, 1);
 if (PBI_BB_enabled) {
  StateSav_SaveFNAME(bb_scsi_disk_filename);
  StateSav_SaveFNAME(bb_rom_filename);

  StateSav_SaveINT(&bb_ram_bank_offset, 1);
  StateSav_SaveUBYTE(bb_ram, BB_RAM_SIZE);
  StateSav_SaveUBYTE(&bb_rom_bank, 1);
  StateSav_SaveINT(&bb_rom_high_bit, 1);
  StateSav_SaveUBYTE(&bb_PCR, 1);
 }
}
