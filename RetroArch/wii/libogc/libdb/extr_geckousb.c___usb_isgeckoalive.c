
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int s32 ;


 int EXI_DEVICE_0 ;
 int EXI_Lock (int,int ,int *) ;
 int EXI_Unlock (int) ;
 int __send_command (int,int*) ;

__attribute__((used)) static int __usb_isgeckoalive(s32 chn)
{
 s32 ret;
 u16 val;

 if(!EXI_Lock(chn,EXI_DEVICE_0,((void*)0))) return 0;

 val = 0x9000;
 ret = __send_command(chn,&val);
 if(ret==1 && !(val&0x0470)) ret = 0;

 EXI_Unlock(chn);
 return ret;
}
