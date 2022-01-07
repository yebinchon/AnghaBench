
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int (* Vdp2DrawEnd ) () ;} ;
struct TYPE_9__ {scalar_t__ manualchange; } ;
struct TYPE_8__ {int EDSR; scalar_t__ COPR; } ;
struct TYPE_7__ {int TVSTAT; } ;
struct TYPE_6__ {scalar_t__ IsSSH2Running; } ;


 int SH2SendInterrupt (int ,int,int) ;
 int SSH2 ;
 int ScuSendVBlankIN () ;
 TYPE_5__* VIDCore ;
 TYPE_4__ Vdp1External ;
 TYPE_3__* Vdp1Regs ;
 TYPE_2__* Vdp2Regs ;
 int stub1 () ;
 TYPE_1__ yabsys ;

void Vdp2VBlankIN(void) {
   VIDCore->Vdp2DrawEnd();

   Vdp1Regs->COPR = 0;




   if (Vdp1External.manualchange) Vdp1Regs->EDSR >>= 1;

   Vdp2Regs->TVSTAT |= 0x0008;
   ScuSendVBlankIN();

   if (yabsys.IsSSH2Running)
      SH2SendInterrupt(SSH2, 0x43, 0x6);
}
