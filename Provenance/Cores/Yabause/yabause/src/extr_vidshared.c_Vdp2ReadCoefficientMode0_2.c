
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int coefdatasize; int msb; } ;
typedef TYPE_1__ vdp2rotationparameter_struct ;
typedef int u8 ;
typedef int u32 ;
typedef int s32 ;


 int T1ReadLong (int *,int) ;
 int T1ReadWord (int *,int) ;

float Vdp2ReadCoefficientMode0_2(vdp2rotationparameter_struct *parameter, u32 addr, u8 * ram)
{
   s32 i;

   if (parameter->coefdatasize == 2)
   {
      addr &= 0x7FFFE;
      i = T1ReadWord(ram, addr);
      parameter->msb = (i >> 15) & 0x1;
      return (float) (signed) ((i & 0x7FFF) | (i & 0x4000 ? 0xFFFFC000 : 0x00000000)) / 1024;
   }
   else
   {
      addr &= 0x7FFFC;
      i = T1ReadLong(ram, addr);
      parameter->msb = (i >> 31) & 0x1;
      return (float) (signed) ((i & 0x00FFFFFF) | (i & 0x00800000 ? 0xFF800000 : 0x00000000)) / 65536;
   }
}
