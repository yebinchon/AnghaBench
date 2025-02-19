
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ s32 ;


 scalar_t__ CARDIO_ERROR_NOCARD ;
 scalar_t__ MAX_DRIVE ;
 scalar_t__ __card_writecmd (scalar_t__,int *,int) ;

__attribute__((used)) static s32 __card_sendcmd(s32 drv_no,u8 cmd,u8 *arg)
{
 u8 ccmd[5] = {0,0,0,0,0};

 if(drv_no<0 || drv_no>=MAX_DRIVE) return CARDIO_ERROR_NOCARD;

 ccmd[0] = cmd;
 if(arg) {
  ccmd[1] = arg[0];
  ccmd[2] = arg[1];
  ccmd[3] = arg[2];
  ccmd[4] = arg[3];
 }
 return __card_writecmd(drv_no,ccmd,5);
}
