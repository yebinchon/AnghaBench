
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int userclipX2; int systemclipX2; int userclipY2; int systemclipY2; scalar_t__ systemclipY1; scalar_t__ userclipY1; scalar_t__ systemclipX1; scalar_t__ userclipX1; } ;


 TYPE_1__* Vdp1Regs ;

int VIDSoftVdp1Reset(void)
{
   Vdp1Regs->userclipX1 = Vdp1Regs->systemclipX1 = 0;
   Vdp1Regs->userclipY1 = Vdp1Regs->systemclipY1 = 0;
   Vdp1Regs->userclipX2 = Vdp1Regs->systemclipX2 = 512;
   Vdp1Regs->userclipY2 = Vdp1Regs->systemclipY2 = 256;

   return 0;
}
