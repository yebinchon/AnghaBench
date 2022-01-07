
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_7__ {int addr; int EDSR; int LOPR; int COPR; } ;
typedef TYPE_1__ Vdp1 ;
struct TYPE_8__ {int (* Vdp1DrawEnd ) () ;int (* Vdp1LocalCoordinate ) (int *,TYPE_1__*) ;int (* Vdp1SystemClipping ) (int *,TYPE_1__*) ;int (* Vdp1UserClipping ) (int *,TYPE_1__*) ;} ;


 int T1ReadWord (int *,int) ;
 int VDP1LOG (char*,int) ;
 TYPE_6__* VIDCore ;
 int stub1 (int *,TYPE_1__*) ;
 int stub2 (int *,TYPE_1__*) ;
 int stub3 (int *,TYPE_1__*) ;
 int stub4 () ;

void Vdp1FakeDrawCommands(u8 * ram, Vdp1 * regs)
{
   u16 command = T1ReadWord(ram, regs->addr);
   u32 commandCounter = 0;
   u32 returnAddr = 0xffffffff;

   while (!(command & 0x8000) && commandCounter < 2000) {

      if (!(command & 0x4000)) {
         switch (command & 0x000F) {
         case 0:
         case 1:
         case 2:
         case 3:

         case 4:
         case 5:
         case 6:
         case 7:
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
