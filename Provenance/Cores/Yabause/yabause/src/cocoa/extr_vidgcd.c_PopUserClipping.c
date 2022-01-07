
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int systemclipY2; int systemclipY1; int systemclipX2; int systemclipX1; } ;


 TYPE_1__* Vdp1Regs ;
 int vdp1clipxend ;
 int vdp1clipxstart ;
 int vdp1clipyend ;
 int vdp1clipystart ;

__attribute__((used)) static void PopUserClipping(void)
{
   vdp1clipxstart = Vdp1Regs->systemclipX1;
   vdp1clipxend = Vdp1Regs->systemclipX2;
   vdp1clipystart = Vdp1Regs->systemclipY1;
   vdp1clipyend = Vdp1Regs->systemclipY2;
}
