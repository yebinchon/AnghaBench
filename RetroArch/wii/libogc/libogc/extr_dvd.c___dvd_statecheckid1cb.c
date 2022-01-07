
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;


 int DVD_DISKIDSIZE ;
 int LWP_ThreadBroadcast (int ) ;
 int __dvd_diskID ;
 int __dvd_ready ;
 int __dvd_tmpid0 ;
 int __dvd_wait_queue ;
 scalar_t__ memcmp (int ,int *,int ) ;
 int memcpy (int ,int *,int ) ;

__attribute__((used)) static void __dvd_statecheckid1cb(s32 result)
{
 __dvd_ready = 1;
 if(memcmp(__dvd_diskID,&__dvd_tmpid0,DVD_DISKIDSIZE)) memcpy(__dvd_diskID,&__dvd_tmpid0,DVD_DISKIDSIZE);
 LWP_ThreadBroadcast(__dvd_wait_queue);
}
