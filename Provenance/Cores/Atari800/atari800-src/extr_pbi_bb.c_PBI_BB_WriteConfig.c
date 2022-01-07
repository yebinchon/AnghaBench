
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int Util_filenamenotset (char*) ;
 char* bb_rom_filename ;
 char* bb_scsi_disk_filename ;
 int fprintf (int *,char*,char*) ;

void PBI_BB_WriteConfig(FILE *fp)
{
 fprintf(fp, "BLACK_BOX_ROM=%s\n", bb_rom_filename);
 if (!Util_filenamenotset(bb_scsi_disk_filename)) {
  fprintf(fp, "BB_SCSI_DISK=%s\n", bb_scsi_disk_filename);
 }
}
