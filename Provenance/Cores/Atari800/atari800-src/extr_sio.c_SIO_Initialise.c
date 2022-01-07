
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIO_MAX_DRIVES ;
 int SIO_NoFrame ;
 int SIO_OFF ;
 int * SIO_drive_status ;
 int * SIO_filename ;
 int* SIO_format_sectorcount ;
 int* SIO_format_sectorsize ;
 int TRUE ;
 int TransferStatus ;
 int strcpy (int ,char*) ;

int SIO_Initialise(int *argc, char *argv[])
{
 int i;
 for (i = 0; i < SIO_MAX_DRIVES; i++) {
  strcpy(SIO_filename[i], "Off");
  SIO_drive_status[i] = SIO_OFF;
  SIO_format_sectorsize[i] = 128;
  SIO_format_sectorcount[i] = 720;
 }
 TransferStatus = SIO_NoFrame;

 return TRUE;
}
