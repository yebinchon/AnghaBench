
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * SIO_drive_status ;
 int * SIO_filename ;
 int StateSav_SaveFNAME (int ) ;
 int StateSav_SaveINT (int*,int) ;

void SIO_StateSave(void)
{
 int i;

 for (i = 0; i < 8; i++) {
  StateSav_SaveINT((int *) &SIO_drive_status[i], 1);
  StateSav_SaveFNAME(SIO_filename[i]);
 }
}
