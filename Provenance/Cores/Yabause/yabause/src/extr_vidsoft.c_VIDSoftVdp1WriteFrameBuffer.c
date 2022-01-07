
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BSWAP16L (int) ;
 int BSWAP32 (int) ;
 int T1WriteByte (int ,int,int) ;
 int T1WriteLong (int ,int,int) ;
 int T1WriteWord (int ,int,int) ;
 int VidsoftWaitForVdp1Thread () ;
 int vdp1backframebuffer ;

void VIDSoftVdp1WriteFrameBuffer(u32 type, u32 addr, u32 val)
{
   VidsoftWaitForVdp1Thread();

   switch (type)
   {
   case 0:
      T1WriteByte(vdp1backframebuffer, addr, val);
      break;
   case 1:

      val = BSWAP16L(val);

      T1WriteWord(vdp1backframebuffer, addr, val);
      break;
   case 2:

      val = BSWAP32(val);

      val = (val & 0xffff) << 16 | (val & 0xffff0000) >> 16;
      T1WriteLong(vdp1backframebuffer, addr, val);
      break;
   default:
      break;
   }
}
