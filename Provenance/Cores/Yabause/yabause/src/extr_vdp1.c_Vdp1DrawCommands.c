
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_12__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_14__ {int addr; int EDSR; int LOPR; int COPR; } ;
typedef TYPE_1__ Vdp1 ;
struct TYPE_13__ {int (* Vdp1DrawEnd ) () ;int (* Vdp1LocalCoordinate ) (int *,TYPE_1__*) ;int (* Vdp1SystemClipping ) (int *,TYPE_1__*) ;int (* Vdp1UserClipping ) (int *,TYPE_1__*) ;int (* Vdp1LineDraw ) (int *,TYPE_1__*,int *) ;int (* Vdp1PolylineDraw ) (int *,TYPE_1__*,int *) ;int (* Vdp1PolygonDraw ) (int *,TYPE_1__*,int *) ;int (* Vdp1DistortedSpriteDraw ) (int *,TYPE_1__*,int *) ;int (* Vdp1ScaledSpriteDraw ) (int *,TYPE_1__*,int *) ;int (* Vdp1NormalSpriteDraw ) (int *,TYPE_1__*,int *) ;} ;


 int T1ReadWord (int *,int) ;
 int VDP1LOG (char*,int) ;
 TYPE_12__* VIDCore ;
 int stub1 (int *,TYPE_1__*,int *) ;
 int stub10 () ;
 int stub2 (int *,TYPE_1__*,int *) ;
 int stub3 (int *,TYPE_1__*,int *) ;
 int stub4 (int *,TYPE_1__*,int *) ;
 int stub5 (int *,TYPE_1__*,int *) ;
 int stub6 (int *,TYPE_1__*,int *) ;
 int stub7 (int *,TYPE_1__*) ;
 int stub8 (int *,TYPE_1__*) ;
 int stub9 (int *,TYPE_1__*) ;

void Vdp1DrawCommands(u8 * ram, Vdp1 * regs, u8* back_framebuffer)
{
   u16 command = T1ReadWord(ram, regs->addr);
   u32 commandCounter = 0;
   u32 returnAddr = 0xffffffff;

   while (!(command & 0x8000) && commandCounter < 2000) {

      if (!(command & 0x4000)) {
         switch (command & 0x000F) {
         case 0:
            VIDCore->Vdp1NormalSpriteDraw(ram, regs, back_framebuffer);
            break;
         case 1:
            VIDCore->Vdp1ScaledSpriteDraw(ram, regs, back_framebuffer);
            break;
         case 2:
         case 3:

            VIDCore->Vdp1DistortedSpriteDraw(ram, regs, back_framebuffer);
            break;
         case 4:
            VIDCore->Vdp1PolygonDraw(ram, regs, back_framebuffer);
            break;
         case 5:
         case 7:
            VIDCore->Vdp1PolylineDraw(ram, regs, back_framebuffer);
            break;
         case 6:
            VIDCore->Vdp1LineDraw(ram, regs, back_framebuffer);
            break;
         case 8:
         case 11:
            VIDCore->Vdp1UserClipping(ram, regs);
            break;
         case 9:
            VIDCore->Vdp1SystemClipping(ram, regs);
            break;
         case 10:
            VIDCore->Vdp1LocalCoordinate(ram, regs);
            break;
         default:
            VDP1LOG("vdp1\t: Bad command: %x\n", command);
            regs->EDSR |= 2;
            VIDCore->Vdp1DrawEnd();
            regs->LOPR = regs->addr >> 3;
            regs->COPR = regs->addr >> 3;
            return;
         }
      }


      switch ((command & 0x3000) >> 12) {
      case 0:
         regs->addr += 0x20;
         break;
      case 1:
         regs->addr = T1ReadWord(ram, regs->addr + 2) * 8;
         break;
      case 2:
         if (returnAddr == 0xFFFFFFFF)
            returnAddr = regs->addr + 0x20;

         regs->addr = T1ReadWord(ram, regs->addr + 2) * 8;
         break;
      case 3:
         if (returnAddr != 0xFFFFFFFF) {
            regs->addr = returnAddr;
            returnAddr = 0xFFFFFFFF;
         }
         else
            regs->addr += 0x20;
         break;
      }

      command = T1ReadWord(ram, regs->addr);
      commandCounter++;
   }
}
