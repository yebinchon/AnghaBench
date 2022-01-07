
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t s32 ;


 size_t CARDIO_OP_IOERR_CRC ;
 size_t CARDIO_OP_IOERR_WRITE ;
 int _SHIFTR (int ,int,int) ;
 size_t __card_datares (size_t,int *) ;
 int ** _ioResponse ;

__attribute__((used)) static s32 __card_dataresponse(s32 drv_no)
{
 s32 ret;
 u8 res;

 if((ret=__card_datares(drv_no,_ioResponse[drv_no]))!=0) return ret;
 res = _SHIFTR(_ioResponse[drv_no][0],1,3);
 if(res==0x0005) ret = CARDIO_OP_IOERR_CRC;
 else if(res==0x0006) ret = CARDIO_OP_IOERR_WRITE;

 return ret;
}
