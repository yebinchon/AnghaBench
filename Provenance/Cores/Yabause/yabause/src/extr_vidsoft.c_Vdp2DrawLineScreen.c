
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_4__ {int U; } ;
struct TYPE_5__ {int all; TYPE_1__ part; } ;
struct TYPE_6__ {scalar_t__ LNCLEN; int VRSIZE; int CCRLB; TYPE_2__ LCTA; } ;


 int COLSAT2YAB32 (int,int) ;
 int T1ReadWord (int ,int) ;
 int TitanPutLineHLine (int,int,int ) ;
 int Vdp2ColorRam ;
 int Vdp2ColorRamGetColor (int,int ) ;
 int Vdp2Ram ;
 TYPE_3__* Vdp2Regs ;
 int vdp2height ;

__attribute__((used)) static void Vdp2DrawLineScreen(void)
{
   u32 scrAddr;
   u16 color;
   u32 dot;
   int i;
 int alpha;


   if (Vdp2Regs->LNCLEN == 0)
      return;

   if (Vdp2Regs->VRSIZE & 0x8000)
      scrAddr = (Vdp2Regs->LCTA.all & 0x7FFFF) << 1;
   else
      scrAddr = (Vdp2Regs->LCTA.all & 0x3FFFF) << 1;

   alpha = (Vdp2Regs->CCRLB & 0x1f) << 1;

   if (Vdp2Regs->LCTA.part.U & 0x8000)
   {

      for (i = 0; i < vdp2height; i++)
      {
         color = T1ReadWord(Vdp2Ram, scrAddr) & 0x7FF;
         dot = Vdp2ColorRamGetColor(color, Vdp2ColorRam);
         scrAddr += 2;

         TitanPutLineHLine(1, i, COLSAT2YAB32(alpha, dot));
      }
   }
   else
   {

      color = T1ReadWord(Vdp2Ram, scrAddr) & 0x7FF;
      dot = Vdp2ColorRamGetColor(color, Vdp2ColorRam);
      for (i = 0; i < vdp2height; i++)
         TitanPutLineHLine(1, i, COLSAT2YAB32(alpha, dot));
   }
}
