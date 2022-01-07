
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t s32 ;


 size_t CARDIO_ERROR_NOCARD ;
 size_t CARDIO_ERROR_READY ;
 int EXI_Detach (size_t) ;
 scalar_t__ FALSE ;
 size_t MAX_DRIVE ;
 scalar_t__ NOT_INITIALIZED ;
 scalar_t__ TRUE ;
 scalar_t__ __card_check (size_t) ;
 size_t __card_response1 (size_t) ;
 size_t __card_sendappcmd (size_t) ;
 size_t __card_sendcmd (size_t,int,int *) ;
 scalar_t__* _ioCardInserted ;
 scalar_t__* _ioFlag ;
 size_t _ioRetryCB (size_t) ;

s32 sdgecko_doUnmount(s32 drv_no)
{
 s32 ret;

 if(drv_no<0 || drv_no>=MAX_DRIVE) return CARDIO_ERROR_NOCARD;

 if(__card_check(drv_no)==TRUE && _ioFlag[drv_no]!=NOT_INITIALIZED) {
  if((ret=__card_sendappcmd(drv_no))!=0) goto exit;
  if((ret=__card_sendcmd(drv_no,0x2a,((void*)0)))!=0) goto exit;
  ret = __card_response1(drv_no);
 }
 _ioFlag[drv_no] = NOT_INITIALIZED;

exit:
 if(_ioCardInserted[drv_no]==TRUE) {
  _ioCardInserted[drv_no] = FALSE;
  EXI_Detach(drv_no);
 }
 if(_ioRetryCB)
  return _ioRetryCB(drv_no);

 return CARDIO_ERROR_READY;
}
