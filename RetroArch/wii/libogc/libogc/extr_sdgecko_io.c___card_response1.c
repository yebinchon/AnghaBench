
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t s32 ;


 size_t CARDIO_ERROR_NOCARD ;
 size_t MAX_DRIVE ;
 size_t __card_readresponse (size_t,int *,int) ;
 size_t __check_response (size_t,int ) ;
 int ** _ioResponse ;

__attribute__((used)) static s32 __card_response1(s32 drv_no)
{
 s32 ret;

 if(drv_no<0 || drv_no>=MAX_DRIVE) return CARDIO_ERROR_NOCARD;

 if((ret=__card_readresponse(drv_no,_ioResponse[drv_no],1))!=0) return ret;
 return __check_response(drv_no,_ioResponse[drv_no][0]);
}
