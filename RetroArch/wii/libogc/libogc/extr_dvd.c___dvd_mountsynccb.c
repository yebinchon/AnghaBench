
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;
typedef int dvdcmdblk ;


 int LWP_ThreadBroadcast (int ) ;
 int __dvd_wait_queue ;

__attribute__((used)) static void __dvd_mountsynccb(s32 result,dvdcmdblk *block)
{
 LWP_ThreadBroadcast(__dvd_wait_queue);
}
