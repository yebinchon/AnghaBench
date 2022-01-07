
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t s32 ;


 size_t __card_stopreadresponse (size_t,int *,int) ;
 size_t __check_response (size_t,int ) ;
 int ** _ioResponse ;

__attribute__((used)) static s32 __card_stopresponse(s32 drv_no)
{
 s32 ret;

 if((ret=__card_stopreadresponse(drv_no,_ioResponse[drv_no],1))!=0) return ret;
 ret = __check_response(drv_no,_ioResponse[drv_no][0]);

 return ret;
}
