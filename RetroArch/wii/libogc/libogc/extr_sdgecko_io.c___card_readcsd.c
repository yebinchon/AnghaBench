
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ s32 ;


 scalar_t__ CARDIO_ERROR_NOCARD ;
 scalar_t__ MAX_DRIVE ;
 scalar_t__ __card_dataread (scalar_t__,int ,int) ;
 scalar_t__ __card_readresponse (scalar_t__,int *,int) ;
 scalar_t__ __card_writecmd (scalar_t__,int*,int) ;
 scalar_t__ __check_response (scalar_t__,int ) ;
 int ** _ioResponse ;
 int * g_CSD ;

__attribute__((used)) static s32 __card_readcsd(s32 drv_no)
{
 u8 ccmd[5] = {0,0,0,0,0};
 s32 ret;

 if(drv_no<0 || drv_no>=MAX_DRIVE) return CARDIO_ERROR_NOCARD;
 ret = 0;
 ccmd[0] = 0x09;
 if((ret=__card_writecmd(drv_no,ccmd,5))!=0) {
  return ret;
 }
 if((ret=__card_readresponse(drv_no,_ioResponse[drv_no],1))!=0) return ret;
 ret = __check_response(drv_no,_ioResponse[drv_no][0]);
 if(ret==0) {
  if((ret=__card_dataread(drv_no,g_CSD[drv_no],16))!=0) return ret;
 }
 return ret;
}
