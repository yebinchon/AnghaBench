
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {scalar_t__ addr; void* userclipY2; void* userclipX2; void* userclipY1; void* userclipX1; } ;
typedef TYPE_1__ Vdp1 ;


 void* T1ReadWord (int *,scalar_t__) ;

void VIDSoftVdp1UserClipping(u8* ram, Vdp1*regs)
{
   regs->userclipX1 = T1ReadWord(ram, regs->addr + 0xC);
   regs->userclipY1 = T1ReadWord(ram, regs->addr + 0xE);
   regs->userclipX2 = T1ReadWord(ram, regs->addr + 0x14);
   regs->userclipY2 = T1ReadWord(ram, regs->addr + 0x16);
}
