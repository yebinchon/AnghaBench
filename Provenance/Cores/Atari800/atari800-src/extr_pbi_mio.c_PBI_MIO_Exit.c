
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * PBI_SCSI_disk ;
 int fclose (int *) ;
 int free (int *) ;
 int * mio_ram ;
 int * mio_rom ;

void PBI_MIO_Exit(void)
{
 if (PBI_SCSI_disk != ((void*)0)) {
  fclose(PBI_SCSI_disk);
  PBI_SCSI_disk = ((void*)0);
 }
 free(mio_ram);
 free(mio_rom);
 mio_rom = mio_ram = ((void*)0);
}
