
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int Vdp1 ;
struct TYPE_2__ {void* systemclipY2; scalar_t__ systemclipY1; void* systemclipX2; scalar_t__ systemclipX1; scalar_t__ addr; } ;


 void* T1ReadWord (int ,scalar_t__) ;
 int Vdp1Ram ;
 TYPE_1__* Vdp1Regs ;
 void* vdp1clipxend ;
 scalar_t__ vdp1clipxstart ;
 void* vdp1clipyend ;
 scalar_t__ vdp1clipystart ;

void VIDGCDVdp1SystemClipping(u8 * ram, Vdp1 * regs)
{
   Vdp1Regs->systemclipX1 = 0;
   Vdp1Regs->systemclipY1 = 0;
   Vdp1Regs->systemclipX2 = T1ReadWord(Vdp1Ram, Vdp1Regs->addr + 0x14);
   Vdp1Regs->systemclipY2 = T1ReadWord(Vdp1Ram, Vdp1Regs->addr + 0x16);

   vdp1clipxstart = Vdp1Regs->systemclipX1;
   vdp1clipxend = Vdp1Regs->systemclipX2;
   vdp1clipystart = Vdp1Regs->systemclipY1;
   vdp1clipyend = Vdp1Regs->systemclipY2;
}
