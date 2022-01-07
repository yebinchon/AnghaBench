
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int Vdp1 ;
struct TYPE_2__ {scalar_t__ userclipX1; scalar_t__ userclipY1; scalar_t__ userclipX2; scalar_t__ userclipY2; scalar_t__ systemclipX1; scalar_t__ systemclipX2; scalar_t__ systemclipY1; scalar_t__ systemclipY2; scalar_t__ addr; } ;


 void* T1ReadWord (int ,scalar_t__) ;
 int Vdp1Ram ;
 TYPE_1__* Vdp1Regs ;
 scalar_t__ vdp1clipxend ;
 scalar_t__ vdp1clipxstart ;
 scalar_t__ vdp1clipyend ;
 scalar_t__ vdp1clipystart ;

void VIDGCDVdp1UserClipping(u8 * ram, Vdp1 * regs)
{
   Vdp1Regs->userclipX1 = T1ReadWord(Vdp1Ram, Vdp1Regs->addr + 0xC);
   Vdp1Regs->userclipY1 = T1ReadWord(Vdp1Ram, Vdp1Regs->addr + 0xE);
   Vdp1Regs->userclipX2 = T1ReadWord(Vdp1Ram, Vdp1Regs->addr + 0x14);
   Vdp1Regs->userclipY2 = T1ReadWord(Vdp1Ram, Vdp1Regs->addr + 0x16);
}
