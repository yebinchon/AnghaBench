
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef size_t s32 ;


 size_t CARDIO_ERROR_NOCARD ;
 size_t MAX_DRIVE ;
 int PAGE_SIZE512 ;
 size_t __card_readresponse (size_t,int *,int) ;
 size_t __card_writecmd (size_t,int*,int) ;
 size_t __check_response (size_t,int ) ;
 int ** _ioResponse ;

__attribute__((used)) static s32 __card_setblocklen(s32 drv_no,u32 block_len)
{
 u8 cmd[5];
 s32 ret;

 if(drv_no<0 || drv_no>=MAX_DRIVE) return CARDIO_ERROR_NOCARD;
 if(block_len>PAGE_SIZE512) block_len = PAGE_SIZE512;

 cmd[0] = 0x10;
 cmd[1] = (block_len>>24)&0xff;
 cmd[2] = (block_len>>16)&0xff;
 cmd[3] = (block_len>>8)&0xff;
 cmd[4] = block_len&0xff;
 if((ret=__card_writecmd(drv_no,cmd,5))!=0) {
  return ret;
 }
 if((ret=__card_readresponse(drv_no,_ioResponse[drv_no],1))<0) return ret;
 ret = __check_response(drv_no,_ioResponse[drv_no][0]);

 return ret;
}
