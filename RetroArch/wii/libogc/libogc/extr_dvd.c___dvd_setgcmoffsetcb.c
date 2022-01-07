
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ s64 ;
typedef int s32 ;


 int DVD_LowSetOffset (scalar_t__,int ) ;
 int __dvd_finaloffsetcb ;
 int __dvd_stategettingerror () ;
 int __dvd_statetimeout () ;
 int * __dvd_usrdata ;

__attribute__((used)) static void __dvd_setgcmoffsetcb(s32 result)
{
 s64 *pn_data,offset;
 if(result==0x0010) {
  __dvd_statetimeout();
  return;
 }
 if(result==0x0001) {
  pn_data = (s64*)__dvd_usrdata;
  __dvd_usrdata = ((void*)0);

  offset = 0;
  if(pn_data) offset = *pn_data;
  DVD_LowSetOffset(offset,__dvd_finaloffsetcb);
  return;
 }
 __dvd_stategettingerror();
}
