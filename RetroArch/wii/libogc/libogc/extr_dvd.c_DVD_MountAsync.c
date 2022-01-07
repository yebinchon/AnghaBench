
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;
typedef int dvdcmdblk ;
typedef int dvdcbcallback ;


 int DVD_RESETHARD ;
 int DVD_Reset (int ) ;
 int DVD_SpinUpDriveAsync (int *,int ) ;
 int __dvd_mountusrcb ;
 int callback ;
 int udelay (int) ;

s32 DVD_MountAsync(dvdcmdblk *block,dvdcbcallback cb)
{
 __dvd_mountusrcb = cb;
 DVD_Reset(DVD_RESETHARD);
 udelay(1150*1000);
 return DVD_SpinUpDriveAsync(block,callback);
}
