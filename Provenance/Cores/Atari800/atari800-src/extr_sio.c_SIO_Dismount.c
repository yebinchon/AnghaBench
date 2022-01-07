
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ sectors; } ;
typedef TYPE_1__ vapi_additional_info_t ;
struct TYPE_4__ {scalar_t__ count; } ;
typedef TYPE_2__ pro_additional_info_t ;


 scalar_t__ IMAGE_TYPE_PRO ;
 scalar_t__ IMAGE_TYPE_VAPI ;
 int SIO_NO_DISK ;
 int * SIO_drive_status ;
 int * SIO_filename ;
 int Util_fclose (int *,int ) ;
 scalar_t__* additional_info ;
 int ** disk ;
 int free (scalar_t__) ;
 scalar_t__* image_type ;
 int * sio_tmpbuf ;
 int strcpy (int ,char*) ;

void SIO_Dismount(int diskno)
{
 if (disk[diskno - 1] != ((void*)0)) {
  Util_fclose(disk[diskno - 1], sio_tmpbuf[diskno - 1]);
  disk[diskno - 1] = ((void*)0);
  SIO_drive_status[diskno - 1] = SIO_NO_DISK;
  strcpy(SIO_filename[diskno - 1], "Empty");
  if (image_type[diskno - 1] == IMAGE_TYPE_PRO) {
   free(((pro_additional_info_t *)additional_info[diskno-1])->count);
  }
  else if (image_type[diskno - 1] == IMAGE_TYPE_VAPI) {
   free(((vapi_additional_info_t *)additional_info[diskno-1])->sectors);
  }
  free(additional_info[diskno - 1]);
  additional_info[diskno - 1] = 0;
 }
}
