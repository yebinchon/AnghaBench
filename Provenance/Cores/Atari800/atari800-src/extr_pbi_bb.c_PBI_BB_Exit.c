
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * PBI_SCSI_disk ;
 int * bb_ram ;
 int * bb_rom ;
 int fclose (int *) ;
 int free (int *) ;

void PBI_BB_Exit(void)
{
 if (PBI_SCSI_disk != ((void*)0)) {
  fclose(PBI_SCSI_disk);
  PBI_SCSI_disk = ((void*)0);
 }
 free(bb_ram);
 free(bb_rom);
 bb_rom = bb_ram = ((void*)0);
}
