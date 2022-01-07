
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int s32 ;


 int EXI_DEVICE_0 ;
 int EXI_Deselect (int) ;
 int EXI_ImmEx (int,int*,int,int ) ;
 int EXI_SPEED16MHZ ;
 int EXI_Select (int,int ,int ) ;
 int EXI_WRITE ;

__attribute__((used)) static __inline__ int __flashwritecommand(s32 chn, u32 flashaddress, u8 flashdata)
{
 s32 ret = 0;
 u32 val = 0xE0000000|(flashaddress<<9)|(flashdata<<1);

 if (flashaddress > 0x7FFFF)
  return 0;

 if(!EXI_Select(chn,EXI_DEVICE_0,EXI_SPEED16MHZ)) ret |= 0x01;
 if(!EXI_ImmEx(chn,&val,sizeof(u32),EXI_WRITE)) ret |= 0x02;
 if(!EXI_ImmEx(chn,&val,sizeof(u32),EXI_WRITE)) ret |= 0x04;
 if(!EXI_Deselect(chn)) ret |= 0x08;

 if(ret) return 0;
 return 1;
}
