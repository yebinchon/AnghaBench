
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int s32 ;


 int _SHIFTL (char,int,int) ;
 int __send_command (int,int*) ;

__attribute__((used)) static int __usb_sendbyte(s32 chn,char ch)
{
 s32 ret;
 u16 val;

 val = (0xB000|_SHIFTL(ch,4,8));
 ret = __send_command(chn,&val);
 if(ret==1 && !(val&0x0400)) ret = 0;

 return ret;
}
