
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;


 int BSWAP16L (int) ;
 int BSWAP32 (int) ;
 int T1ReadByte (int ,int) ;
 int T1ReadLong (int ,int) ;
 int T1ReadWord (int ,int) ;
 int VidsoftWaitForVdp1Thread () ;
 int vdp1backframebuffer ;

void VIDSoftVdp1ReadFrameBuffer(u32 type, u32 addr, void * out)
{
   u32 val;

   VidsoftWaitForVdp1Thread();

   switch (type)
   {
   case 0:
      val = T1ReadByte(vdp1backframebuffer, addr);
      *(u8*)out = val;
      break;
   case 1:
      val = T1ReadWord(vdp1backframebuffer, addr);

      val = BSWAP16L(val);

      *(u16*)out = val;
      break;
   case 2:
      *(u32*)out = 0;

      break;
   default:
      break;
   }
}
