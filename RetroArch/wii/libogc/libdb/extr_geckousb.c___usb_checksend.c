
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int s32 ;


 int __send_command (int,int*) ;

__attribute__((used)) static int __usb_checksend(s32 chn)
{
 s32 ret;
 u16 val;

 val = 0xC000;
 ret = __send_command(chn,&val);
 if(ret==1 && !(val&0x0400)) ret = 0;

 return ret;
}
