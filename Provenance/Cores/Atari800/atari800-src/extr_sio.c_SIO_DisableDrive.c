
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIO_Dismount (int) ;
 int SIO_OFF ;
 int * SIO_drive_status ;
 int * SIO_filename ;
 int strcpy (int ,char*) ;

void SIO_DisableDrive(int diskno)
{
 SIO_Dismount(diskno);
 SIO_drive_status[diskno - 1] = SIO_OFF;
 strcpy(SIO_filename[diskno - 1], "Off");
}
