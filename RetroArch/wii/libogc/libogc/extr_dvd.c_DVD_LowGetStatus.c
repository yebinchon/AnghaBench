
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s32 ;
typedef int dvdcallbacklow ;


 int DVD_LowRequestError (int ) ;
 int __dvd_finalstatuscb ;
 int __dvd_getstatuscb ;
 int * __dvd_usrdata ;

s32 DVD_LowGetStatus(u32 *status,dvdcallbacklow cb)
{
 __dvd_finalstatuscb = cb;
 __dvd_usrdata = status;

 DVD_LowRequestError(__dvd_getstatuscb);
 return 1;
}
