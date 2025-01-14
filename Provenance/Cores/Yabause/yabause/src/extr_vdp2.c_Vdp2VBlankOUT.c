
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_10__ {int (* Vdp2DrawScreens ) () ;int (* Vdp2DrawStart ) () ;} ;
typedef TYPE_1__ VideoInterface_struct ;
struct TYPE_16__ {int* data; } ;
struct TYPE_15__ {int EXLE; } ;
struct TYPE_14__ {int manualerase; } ;
struct TYPE_13__ {int PTMR; int FBCR; int TVMR; } ;
struct TYPE_12__ {int TVSTAT; int TVMD; int EXTEN; } ;
struct TYPE_11__ {int OneFrameTime; scalar_t__ IsPal; } ;


 int FPSDisplay () ;
 scalar_t__ FrameAdvanceVariable ;
 TYPE_9__ PORTDATA1 ;
 int ScuSendVBlankOUT () ;
 TYPE_8__* SmpcRegs ;
 TYPE_1__* VIDCore ;
 TYPE_1__ VIDDummy ;
 int Vdp1Draw () ;
 TYPE_5__ Vdp1External ;
 TYPE_4__* Vdp1Regs ;
 TYPE_3__* Vdp2Regs ;
 int Vdp2SendExternalLatch (int,int) ;
 int YabauseGetTicks () ;
 scalar_t__ autoframeskipenab ;
 int lastticks ;
 int stub1 () ;
 int stub2 () ;
 scalar_t__ throttlespeed ;
 int vdp2_is_odd_frame ;
 TYPE_2__ yabsys ;

void Vdp2VBlankOUT(void) {
   static int framestoskip = 0;
   static int framesskipped = 0;
   static int skipnextframe = 0;
   static u64 curticks = 0;
   static u64 diffticks = 0;
   static u32 framecount = 0;
   static u64 onesecondticks = 0;
   static VideoInterface_struct * saved = ((void*)0);

   if (vdp2_is_odd_frame)
      vdp2_is_odd_frame = 0;
   else
      vdp2_is_odd_frame = 1;

   Vdp2Regs->TVSTAT = ((Vdp2Regs->TVSTAT & ~0x0008) & ~0x0002) | (vdp2_is_odd_frame << 1);

   if (skipnextframe && (! saved))
   {
      saved = VIDCore;
      VIDCore = &VIDDummy;
   }
   else if (saved && (! skipnextframe))
   {
      VIDCore = saved;
      saved = ((void*)0);
   }

   VIDCore->Vdp2DrawStart();

   if (Vdp2Regs->TVMD & 0x8000) {
      VIDCore->Vdp2DrawScreens();
      if (Vdp1Regs->PTMR == 2) Vdp1Draw();
   }
   else
    if (Vdp1Regs->PTMR == 2) Vdp1Draw();

   FPSDisplay();
   if ((Vdp1Regs->FBCR & 2) && (Vdp1Regs->TVMR & 8))
      Vdp1External.manualerase = 1;

   if (!skipnextframe)
   {
      framesskipped = 0;

      if (framestoskip > 0)
         skipnextframe = 1;
   }
   else
   {
      framestoskip--;

      if (framestoskip < 1)
         skipnextframe = 0;
      else
         skipnextframe = 1;

      framesskipped++;
   }


   if (throttlespeed)
   {

      if (framestoskip < 1)
         framestoskip = 6;
   }

   else if (autoframeskipenab && FrameAdvanceVariable == 0)
   {
      framecount++;

      if (framecount > (yabsys.IsPal ? 50 : 60))
      {
         framecount = 1;
         onesecondticks = 0;
      }

      curticks = YabauseGetTicks();
      diffticks = curticks-lastticks;

      if ((onesecondticks+diffticks) > ((yabsys.OneFrameTime * (u64)framecount) + (yabsys.OneFrameTime / 2)) &&
          framesskipped < 9)
      {

         skipnextframe = 1;


         framestoskip = 1;
      }
      else if ((onesecondticks+diffticks) < ((yabsys.OneFrameTime * (u64)framecount) - (yabsys.OneFrameTime / 2)))
      {

         for (;;)
         {
            curticks = YabauseGetTicks();
            diffticks = curticks-lastticks;
            if ((onesecondticks+diffticks) >= (yabsys.OneFrameTime * (u64)framecount))
               break;
         }
      }

      onesecondticks += diffticks;
      lastticks = curticks;
   }

   ScuSendVBlankOUT();

   if (Vdp2Regs->EXTEN & 0x200)
   {

      if (SmpcRegs->EXLE & 0x1)
         Vdp2SendExternalLatch((PORTDATA1.data[3]<<8)|PORTDATA1.data[4], (PORTDATA1.data[5]<<8)|PORTDATA1.data[6]);
 }
}
