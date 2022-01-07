
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {scalar_t__ addr; void* systemclipY2; void* systemclipX2; scalar_t__ systemclipY1; scalar_t__ systemclipX1; } ;
typedef TYPE_1__ Vdp1 ;


 void* T1ReadWord (int *,scalar_t__) ;

void VIDSoftVdp1SystemClipping(u8* ram, Vdp1*regs)
{
   regs->systemclipX1 = 0;
   regs->systemclipY1 = 0;
   regs->systemclipX2 = T1ReadWord(ram, regs->addr + 0x14);
   regs->systemclipY2 = T1ReadWord(ram, regs->addr + 0x16);
}
