
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;


 int DVD_LowStopMotor (int ) ;
 int __dvd_stateerrorcb ;
 int __dvd_storeerror (int ) ;

void __dvd_stateerror(s32 result)
{
 __dvd_storeerror(result);
 DVD_LowStopMotor(__dvd_stateerrorcb);
}
