
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
typedef size_t s32 ;


 size_t CARDIO_ERROR_FATALERROR ;
 size_t CARDIO_ERROR_NOCARD ;
 size_t CARDIO_ERROR_READY ;
 size_t MAX_DRIVE ;
 size_t __card_readresponse (size_t,int*,int) ;
 int** _ioResponse ;

__attribute__((used)) static s32 __card_response2(s32 drv_no)
{
 u32 ret;

 if(drv_no<0 || drv_no>=MAX_DRIVE) return CARDIO_ERROR_NOCARD;

 if((ret=__card_readresponse(drv_no,_ioResponse[drv_no],2))!=0) return ret;
 if(!(_ioResponse[drv_no][0]&0x7c) && !(_ioResponse[drv_no][1]&0x9e)) return CARDIO_ERROR_READY;
 return CARDIO_ERROR_FATALERROR;
}
