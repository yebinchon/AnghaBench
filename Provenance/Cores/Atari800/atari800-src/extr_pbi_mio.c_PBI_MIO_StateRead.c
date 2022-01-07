
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PBI_MIO_enabled ;
 int StateSav_ReadFNAME (int ) ;
 int StateSav_ReadINT (int*,int) ;
 int StateSav_ReadUBYTE (int *,int) ;
 int init_mio () ;
 int * mio_ram ;
 int mio_ram_bank_offset ;
 int mio_ram_enabled ;
 int mio_ram_size ;
 int mio_rom_bank ;
 int mio_rom_filename ;
 int mio_scsi_disk_filename ;

void PBI_MIO_StateRead(void)
{
 StateSav_ReadINT(&PBI_MIO_enabled, 1);
 if (PBI_MIO_enabled) {
  StateSav_ReadFNAME(mio_scsi_disk_filename);
  StateSav_ReadFNAME(mio_rom_filename);
  StateSav_ReadINT(&mio_ram_size, 1);
  init_mio();
  StateSav_ReadINT(&mio_ram_bank_offset, 1);
  StateSav_ReadUBYTE(mio_ram, mio_ram_size);
  StateSav_ReadUBYTE(&mio_rom_bank, 1);
  StateSav_ReadINT(&mio_ram_enabled, 1);
 }
}
