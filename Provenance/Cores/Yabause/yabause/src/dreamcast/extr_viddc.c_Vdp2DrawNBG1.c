
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int enable; int transparencyenable; int specialprimode; int colornumber; int isbitmap; int cellw; int cellh; int x; int y; int charaddr; int paladdr; int mapwh; int planew; int planeh; int patterndatasize; int patternwh; int pagewh; int supplementdata; int auxmode; int alpha; int coloroffset; int cor; int cog; int cob; float coordincx; float coordincy; void (* PlaneAddr ) (void*,int) ;int priority; int * PostPixelFetchCalc; scalar_t__ specialfunction; scalar_t__ flipfunction; } ;
typedef TYPE_2__ vdp2draw_struct ;
struct TYPE_10__ {int disptoggle; } ;
struct TYPE_7__ {int all; } ;
struct TYPE_9__ {int BGON; int SFPRMD; int CHCTLA; int SCXIN1; int SCYIN1; int MPOFN; int BMPNA; int PLSZ; int PNCN1; int CCCTL; int CCRNA; int CRAOFA; int CLOFEN; int CLOFSL; int COBR; int COBG; int COBB; int COAR; int COAG; int COAB; TYPE_1__ ZMXN1; } ;


 int DoColorCalc ;
 int DoColorCalcWithColorOffset ;
 int DoColorOffset ;
 int DoNothing ;
 int Vdp2DrawMap (TYPE_2__*) ;
 int Vdp2DrawScrollBitmap (TYPE_2__*) ;
 TYPE_4__ Vdp2External ;
 int Vdp2NBG1PlaneAddr ;
 TYPE_3__* Vdp2Regs ;
 int nbg1priority ;

__attribute__((used)) static int Vdp2DrawNBG1(void)
{
   vdp2draw_struct info;

   info.enable = Vdp2Regs->BGON & 0x2;

   if (!(info.enable & Vdp2External.disptoggle))
       return 0;

   info.transparencyenable = !(Vdp2Regs->BGON & 0x200);
   info.specialprimode = (Vdp2Regs->SFPRMD >> 2) & 0x3;

   info.colornumber = (Vdp2Regs->CHCTLA & 0x3000) >> 12;

   if((info.isbitmap = Vdp2Regs->CHCTLA & 0x200) != 0)
   {
      switch((Vdp2Regs->CHCTLA & 0xC00) >> 10)
      {
         case 0: info.cellw = 512;
                 info.cellh = 256;
                 break;
         case 1: info.cellw = 512;
                 info.cellh = 512;
                 break;
         case 2: info.cellw = 1024;
                 info.cellh = 256;
                 break;
         case 3: info.cellw = 1024;
                 info.cellh = 512;
                 break;
      }

      info.x = - ((Vdp2Regs->SCXIN1 & 0x7FF) % info.cellw);
      info.y = - ((Vdp2Regs->SCYIN1 & 0x7FF) % info.cellh);

      info.charaddr = ((Vdp2Regs->MPOFN & 0x70) >> 4) * 0x20000;
      info.paladdr = Vdp2Regs->BMPNA & 0x700;
      info.flipfunction = 0;
      info.specialfunction = 0;
   }
   else
   {
      info.mapwh = 2;

      switch((Vdp2Regs->PLSZ & 0xC) >> 2)
      {
         case 0:
            info.planew = info.planeh = 1;
            break;
         case 1:
            info.planew = 2;
            info.planeh = 1;
            break;
         case 3:
            info.planew = info.planeh = 2;
            break;
         default:
            info.planew = info.planeh = 1;
            break;
      }

      info.x = - ((Vdp2Regs->SCXIN1 & 0x7FF) % (512 * info.planew));
      info.y = - ((Vdp2Regs->SCYIN1 & 0x7FF) % (512 * info.planeh));

      if(Vdp2Regs->PNCN1 & 0x8000)
         info.patterndatasize = 1;
      else
         info.patterndatasize = 2;

      if(Vdp2Regs->CHCTLA & 0x100)
         info.patternwh = 2;
      else
         info.patternwh = 1;

      info.pagewh = 64/info.patternwh;
      info.cellw = info.cellh = 8;
      info.supplementdata = Vdp2Regs->PNCN1 & 0x3FF;
      info.auxmode = (Vdp2Regs->PNCN1 & 0x4000) >> 14;
   }

   if (Vdp2Regs->CCCTL & 0x2)
      info.alpha = ((~Vdp2Regs->CCRNA & 0x1F00) >> 5) + 0x7;
   else
      info.alpha = 0xFF;

   info.coloroffset = (Vdp2Regs->CRAOFA & 0x70) << 4;

   if (Vdp2Regs->CLOFEN & 0x2)
   {

      if (Vdp2Regs->CLOFSL & 0x2)
      {

         info.cor = Vdp2Regs->COBR & 0xFF;
         if (Vdp2Regs->COBR & 0x100)
            info.cor |= 0xFFFFFF00;

         info.cog = Vdp2Regs->COBG & 0xFF;
         if (Vdp2Regs->COBG & 0x100)
            info.cog |= 0xFFFFFF00;

         info.cob = Vdp2Regs->COBB & 0xFF;
         if (Vdp2Regs->COBB & 0x100)
            info.cob |= 0xFFFFFF00;
      }
      else
      {

         info.cor = Vdp2Regs->COAR & 0xFF;
         if (Vdp2Regs->COAR & 0x100)
            info.cor |= 0xFFFFFF00;

         info.cog = Vdp2Regs->COAG & 0xFF;
         if (Vdp2Regs->COAG & 0x100)
            info.cog |= 0xFFFFFF00;

         info.cob = Vdp2Regs->COAB & 0xFF;
         if (Vdp2Regs->COAB & 0x100)
            info.cob |= 0xFFFFFF00;
      }

      if (Vdp2Regs->CCCTL & 0x2)
         info.PostPixelFetchCalc = &DoColorCalcWithColorOffset;
      else
         info.PostPixelFetchCalc = &DoColorOffset;
   }
   else
   {
      if (Vdp2Regs->CCCTL & 0x2)
         info.PostPixelFetchCalc = &DoColorCalc;
      else
         info.PostPixelFetchCalc = &DoNothing;
   }

   info.coordincx = (float) 65536 / (Vdp2Regs->ZMXN1.all & 0x7FF00);
   info.coordincy = (float) 65536 / (Vdp2Regs->ZMXN1.all & 0x7FF00);

   info.priority = nbg1priority;
   info.PlaneAddr = (void (*)(void *, int))&Vdp2NBG1PlaneAddr;

   if (info.isbitmap)
   {
      Vdp2DrawScrollBitmap(&info);
   }
   else
      Vdp2DrawMap(&info);

   return 1;
}
