
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t s32 ;


 size_t CARDIO_ERROR_READY ;
 scalar_t__ INITIALIZED ;
 scalar_t__* _ioFlag ;
 size_t sdgecko_initIO (size_t) ;

s32 sdgecko_preIO(s32 drv_no)
{
 s32 ret;

 if(_ioFlag[drv_no]!=INITIALIZED) {
  ret = sdgecko_initIO(drv_no);
  if(ret!=CARDIO_ERROR_READY) {
   return ret;
  }
 }
 return CARDIO_ERROR_READY;
}
