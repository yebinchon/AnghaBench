
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ s32 ;


 scalar_t__ CARDIO_ERROR_IOERROR ;
 scalar_t__ CARDIO_ERROR_IOTIMEOUT ;
 scalar_t__ CARDIO_ERROR_NOCARD ;
 scalar_t__ CARDIO_ERROR_READY ;
 int EXI_DEVICE_0 ;
 int EXI_Deselect (scalar_t__) ;
 scalar_t__ EXI_ImmEx (scalar_t__,int*,int,int ) ;
 int EXI_READWRITE ;
 scalar_t__ EXI_Select (scalar_t__,int ,int ) ;
 int EXI_Unlock (scalar_t__) ;
 int EXI_WRITE ;
 scalar_t__ MAX_DRIVE ;
 scalar_t__ __card_checktimeout (scalar_t__,scalar_t__,int) ;
 int __exi_wait (scalar_t__) ;
 int _ioCardFreq ;
 int _ioClrFlag ;
 scalar_t__ _ioWPFlag ;
 scalar_t__ gettick () ;

__attribute__((used)) static s32 __card_multiwritestop(s32 drv_no)
{
 s32 ret,cnt,startT;
 u8 dummy[32];

 if(drv_no<0 || drv_no>=MAX_DRIVE) return CARDIO_ERROR_NOCARD;

 for(cnt=0;cnt<32;cnt++) dummy[cnt] = _ioClrFlag;

 __exi_wait(drv_no);

 if(EXI_Select(drv_no,EXI_DEVICE_0,_ioCardFreq)==0) {
  EXI_Unlock(drv_no);
  return CARDIO_ERROR_NOCARD;
 }

 ret = CARDIO_ERROR_READY;
 dummy[0] = 0xfd;
 if(_ioWPFlag) dummy[0] = 0x02;
 if(EXI_ImmEx(drv_no,dummy,1,EXI_WRITE)==0) {
  EXI_Deselect(drv_no);
  EXI_Unlock(drv_no);
  return CARDIO_ERROR_IOERROR;
 }

 dummy[0] = _ioClrFlag;
 if(EXI_ImmEx(drv_no,dummy,1,EXI_READWRITE)==0) {
  EXI_Deselect(drv_no);
  EXI_Unlock(drv_no);
  return CARDIO_ERROR_IOERROR;
 }

 dummy[0] = _ioClrFlag;
 if(EXI_ImmEx(drv_no,dummy,1,EXI_READWRITE)==0) {
  EXI_Deselect(drv_no);
  EXI_Unlock(drv_no);
  return CARDIO_ERROR_IOERROR;
 }

 dummy[0] = _ioClrFlag;
 if(EXI_ImmEx(drv_no,dummy,1,EXI_READWRITE)==0) {
  EXI_Deselect(drv_no);
  EXI_Unlock(drv_no);
  return CARDIO_ERROR_IOERROR;
 }

 dummy[0] = _ioClrFlag;
 if(EXI_ImmEx(drv_no,dummy,1,EXI_READWRITE)==0) {
  EXI_Deselect(drv_no);
  EXI_Unlock(drv_no);
  return CARDIO_ERROR_IOERROR;
 }

 startT = gettick();
 ret = CARDIO_ERROR_READY;
 while(dummy[0]==0) {
  dummy[0] = _ioClrFlag;
  if(EXI_ImmEx(drv_no,dummy,1,EXI_READWRITE)==0) {
   EXI_Deselect(drv_no);
   EXI_Unlock(drv_no);
   return CARDIO_ERROR_IOERROR;
  }
  if(dummy[0]) break;
  if(__card_checktimeout(drv_no,startT,1500)!=0) {
   dummy[0] = _ioClrFlag;
   if(EXI_ImmEx(drv_no,dummy,1,EXI_READWRITE)==0) {
    EXI_Deselect(drv_no);
    EXI_Unlock(drv_no);
    return CARDIO_ERROR_IOERROR;
   }
   if(!dummy[0]) ret = CARDIO_ERROR_IOTIMEOUT;
   break;
  }
 }

 EXI_Deselect(drv_no);
 EXI_Unlock(drv_no);
 return ret;
}
