
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dvddrvinfo ;


 int __dvd_driveinfo ;

dvddrvinfo* DVD_GetDriveInfo()
{
 return &__dvd_driveinfo;
}
