
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;
typedef int dvdcmdblk ;


 int DVD_DISKIDSIZE ;
 int DVD_ReadDiskID (int *,int *,void (*) (int,int *)) ;
 int DVD_SpinUpDriveAsync (int *,void (*) (int,int *)) ;
 int __dvd_diskID ;
 int __dvd_mountusrcb (int,int *) ;
 int __dvd_tmpid0 ;
 int memcpy (int ,int *,int) ;

void callback(s32 result,dvdcmdblk *block)
{
 if(result==0x00) {
  DVD_ReadDiskID(block,&__dvd_tmpid0,callback);
  return;
 }
 else if(result>=DVD_DISKIDSIZE) {
  memcpy(__dvd_diskID,&__dvd_tmpid0,DVD_DISKIDSIZE);
 } else if(result==-4) {
  DVD_SpinUpDriveAsync(block,callback);
  return;
 }
 if(__dvd_mountusrcb) __dvd_mountusrcb(result,block);
}
