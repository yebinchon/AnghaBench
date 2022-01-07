
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int s32 ;


 int __send_command (int,int*) ;

__attribute__((used)) static int __usb_recvbyte(s32 chn,char *ch)
{
 s32 ret;
 u16 val;

 *ch = 0;
 val = 0xA000;
 ret = __send_command(chn,&val);
 if(ret==1 && !(val&0x0800)) ret = 0;
 else if(ret==1) *ch = (val&0xff);

 return ret;
}
