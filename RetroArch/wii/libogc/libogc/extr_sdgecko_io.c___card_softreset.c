
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ s32 ;


 scalar_t__ CARDIO_ERROR_NOCARD ;
 scalar_t__ MAX_DRIVE ;
 scalar_t__ __card_readresponse (scalar_t__,int *,int) ;
 scalar_t__ __card_writecmd0 (scalar_t__) ;
 scalar_t__ __check_response (scalar_t__,int ) ;
 int ** _ioResponse ;

__attribute__((used)) static s32 __card_softreset(s32 drv_no)
{
 s32 ret;

 if(drv_no<0 || drv_no>=MAX_DRIVE) return CARDIO_ERROR_NOCARD;
 ret = 0;
 if((ret=__card_writecmd0(drv_no))!=0) {
  return ret;
 }

 if((ret=__card_readresponse(drv_no,_ioResponse[drv_no],1))!=0) return ret;
 return __check_response(drv_no,_ioResponse[drv_no][0]);
}
