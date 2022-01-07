
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef size_t s32 ;


 int BYTE_ADDRESSING ;
 size_t CARDIO_ERROR_IOERROR ;
 size_t CARDIO_ERROR_NOCARD ;
 size_t CARDIO_ERROR_READY ;
 int EXI_DEVICE_0 ;
 int EXI_GetID (size_t,int ,int*) ;
 int EXI_SPEED16MHZ ;
 int INITIALIZED ;
 int INITIALIZING ;
 size_t MAX_DRIVE ;
 int SECTOR_ADDRESSING ;
 scalar_t__ TRUE ;
 scalar_t__ TYPE_SD ;
 scalar_t__ TYPE_SDHC ;
 int WRITE_BL_LEN (size_t) ;
 scalar_t__ __card_check (size_t) ;
 scalar_t__ __card_readcid (size_t) ;
 scalar_t__ __card_readcsd (size_t) ;
 int __card_retrycb ;
 scalar_t__ __card_sd_status (size_t) ;
 scalar_t__ __card_sendCMD58 (size_t) ;
 scalar_t__ __card_sendCMD8 (size_t) ;
 scalar_t__ __card_sendopcond (size_t) ;
 scalar_t__ __card_setblocklen (size_t,int) ;
 scalar_t__ __card_softreset (size_t) ;
 scalar_t__* _initType ;
 int * _ioAddressingType ;
 int _ioCardFreq ;
 scalar_t__* _ioCardInserted ;
 int * _ioFlag ;
 int* _ioPageSize ;
 int** _ioResponse ;
 int _ioRetryCB ;
 int _ioRetryCnt ;
 int _ioWPFlag ;
 size_t sdgecko_doUnmount (size_t) ;

s32 sdgecko_initIO(s32 drv_no)
{
 if(drv_no<0 || drv_no>=MAX_DRIVE) return CARDIO_ERROR_NOCARD;

 u32 id = 0;
 EXI_GetID(drv_no,EXI_DEVICE_0,&id);
 if ( id != -1 ) return CARDIO_ERROR_NOCARD;

 if(_ioRetryCnt>5) {
  _ioRetryCnt = 0;
  return CARDIO_ERROR_IOERROR;
 }

 _ioCardInserted[drv_no] = __card_check(drv_no);

 if(_ioCardInserted[drv_no]==TRUE) {
  _ioWPFlag = 0;
  _ioCardFreq = EXI_SPEED16MHZ;
  _initType[drv_no] = TYPE_SD;
  _ioFlag[drv_no] = INITIALIZING;
  _ioAddressingType[drv_no] = BYTE_ADDRESSING;
  if(__card_softreset(drv_no)!=0) {
   _ioWPFlag = 1;
   if(__card_softreset(drv_no)!=0) goto exit;
  }

  if(__card_sendCMD8(drv_no)!=0) goto exit;
  if((_ioResponse[drv_no][3]==1) && (_ioResponse[drv_no][4]==0xAA)) _initType[drv_no] = TYPE_SDHC;

  if(__card_sendopcond(drv_no)!=0) goto exit;
  if(__card_readcsd(drv_no)!=0) goto exit;
  if(__card_readcid(drv_no)!=0) goto exit;

  if(_initType[drv_no]==TYPE_SDHC) {
   if(__card_sendCMD58(drv_no)!=0) goto exit;
   if(_ioResponse[drv_no][1]&0x40) _ioAddressingType[drv_no] = SECTOR_ADDRESSING;
  }

  _ioPageSize[drv_no] = 1<<WRITE_BL_LEN(drv_no);
  if(__card_setblocklen(drv_no,_ioPageSize[drv_no])!=0) goto exit;

  if(__card_sd_status(drv_no)!=0) goto exit;

  _ioRetryCnt = 0;
  _ioFlag[drv_no] = INITIALIZED;
  return CARDIO_ERROR_READY;
exit:
  _ioRetryCB = __card_retrycb;
  return sdgecko_doUnmount(drv_no);
 }
 return CARDIO_ERROR_NOCARD;
}
