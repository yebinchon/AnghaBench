
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int Util_filenamenotset (char*) ;
 int fprintf (int *,char*,char*) ;
 char* mio_rom_filename ;
 char* mio_scsi_disk_filename ;

void PBI_MIO_WriteConfig(FILE *fp)
{
 fprintf(fp, "MIO_ROM=%s\n", mio_rom_filename);
 if (!Util_filenamenotset(mio_scsi_disk_filename)) {
  fprintf(fp, "MIO_SCSI_DISK=%s\n", mio_scsi_disk_filename);
 }
}
