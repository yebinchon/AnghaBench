
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ SIO_UnitStatus ;


 int FALSE ;
 int FILENAME_MAX ;
 int SIO_Mount (int,char*,int ) ;


 scalar_t__* SIO_drive_status ;
 int StateSav_ReadFNAME (char*) ;
 int StateSav_ReadINT (int*,int) ;
 int TRUE ;

void SIO_StateRead(void)
{
 int i;

 for (i = 0; i < 8; i++) {
  int saved_drive_status;
  char filename[FILENAME_MAX];

  StateSav_ReadINT(&saved_drive_status, 1);
  SIO_drive_status[i] = (SIO_UnitStatus)saved_drive_status;

  StateSav_ReadFNAME(filename);
  if (filename[0] == 0)
   continue;



  switch (saved_drive_status) {
  case 129:
   SIO_Mount(i + 1, filename, TRUE);
   break;
  case 128:
   SIO_Mount(i + 1, filename, FALSE);
   break;
  default:
   break;
  }
 }
}
