
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {scalar_t__ addr; void* localY; void* localX; } ;
typedef TYPE_1__ Vdp1 ;


 void* T1ReadWord (int *,scalar_t__) ;

void VIDSoftVdp1LocalCoordinate(u8* ram, Vdp1*regs)
{
   regs->localX = T1ReadWord(ram, regs->addr + 0xC);
   regs->localY = T1ReadWord(ram, regs->addr + 0xE);
}
