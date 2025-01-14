
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t s32 ;


 size_t CARDIO_ERROR_NOCARD ;
 size_t MAX_DRIVE ;
 size_t __card_readresponse (size_t,int *,int) ;
 size_t __card_writecmd (size_t,int*,int) ;
 size_t __check_response (size_t,int ) ;
 int ** _ioResponse ;

__attribute__((used)) static s32 __card_sendCMD58(s32 drv_no)
{
 s32 ret;
 u8 ccmd[5] = {0,0,0,0,0};

 if(drv_no<0 || drv_no>=MAX_DRIVE) return CARDIO_ERROR_NOCARD;

 ccmd[0]= 0x3A;
 if((ret=__card_writecmd(drv_no,ccmd,5))!=0) {
  return ret;
 }
 if((ret=__card_readresponse(drv_no,_ioResponse[drv_no],5))!=0) return ret;
 ret = __check_response(drv_no,_ioResponse[drv_no][0]);

 return ret;
}
