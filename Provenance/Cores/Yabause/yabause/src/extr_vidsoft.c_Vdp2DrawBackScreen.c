
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int (* PostPixelFetchCalc ) (TYPE_1__*,int ) ;int member_0; } ;
typedef TYPE_1__ vdp2draw_struct ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_8__ {int TVMD; int VRSIZE; int BKTAU; int BKTAL; } ;


 int COLSAT2YAB16 (int,int ) ;
 int COLSAT2YAB32 (int,int ) ;
 int ReadVdp2ColorOffset (TYPE_4__*,TYPE_1__*,int,int ) ;
 int T1ReadWord (int ,int) ;
 int TitanPutBackHLine (int,int ) ;
 int Vdp2Ram ;
 TYPE_4__* Vdp2Regs ;
 int stub1 (TYPE_1__*,int ) ;
 int stub2 (TYPE_1__*,int ) ;
 int vdp2height ;

__attribute__((used)) static void Vdp2DrawBackScreen(void)
{
   int i, j;


   if ((Vdp2Regs->TVMD & 0x8000) == 0 && (Vdp2Regs->TVMD & 0x100) == 0)
   {

      for (j = 0; j < vdp2height; j++)
         TitanPutBackHLine(j, COLSAT2YAB32(0x3F, 0));
   }
   else
   {

      u32 scrAddr;
      u16 dot;
      vdp2draw_struct info = { 0 };

      ReadVdp2ColorOffset(Vdp2Regs, &info, (1 << 5), 0);

      if (Vdp2Regs->VRSIZE & 0x8000)
         scrAddr = (((Vdp2Regs->BKTAU & 0x7) << 16) | Vdp2Regs->BKTAL) * 2;
      else
         scrAddr = (((Vdp2Regs->BKTAU & 0x3) << 16) | Vdp2Regs->BKTAL) * 2;

      if (Vdp2Regs->BKTAU & 0x8000)
      {

         for (i = 0; i < vdp2height; i++)
         {
            dot = T1ReadWord(Vdp2Ram, scrAddr);
            scrAddr += 2;

            TitanPutBackHLine(i, info.PostPixelFetchCalc(&info, COLSAT2YAB16(0x3f, dot)));
         }
      }
      else
      {

         dot = T1ReadWord(Vdp2Ram, scrAddr);

         for (j = 0; j < vdp2height; j++)
            TitanPutBackHLine(j, info.PostPixelFetchCalc(&info, COLSAT2YAB16(0x3f, dot)));
      }
   }
}
