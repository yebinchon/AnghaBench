
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PBI_MIO_enabled ;
 int StateSav_SaveFNAME (int ) ;
 int StateSav_SaveINT (int*,int) ;
 int StateSav_SaveUBYTE (int *,int) ;
 int * mio_ram ;
 int mio_ram_bank_offset ;
 int mio_ram_enabled ;
 int mio_ram_size ;
 int mio_rom_bank ;
 int mio_rom_filename ;
 int mio_scsi_disk_filename ;

void PBI_MIO_StateSave(void)
{
 StateSav_SaveINT(&PBI_MIO_enabled, 1);
 if (PBI_MIO_enabled) {
  StateSav_SaveFNAME(mio_scsi_disk_filename);
  StateSav_SaveFNAME(mio_rom_filename);
  StateSav_SaveINT(&mio_ram_size, 1);

  StateSav_SaveINT(&mio_ram_bank_offset, 1);
  StateSav_SaveUBYTE(mio_ram, mio_ram_size);
  StateSav_SaveUBYTE(&mio_rom_bank, 1);
  StateSav_SaveINT(&mio_ram_enabled, 1);
 }
}
