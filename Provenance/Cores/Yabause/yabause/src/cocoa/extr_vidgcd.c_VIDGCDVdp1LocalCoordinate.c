
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int Vdp1 ;
struct TYPE_2__ {scalar_t__ addr; void* localY; void* localX; } ;


 void* T1ReadWord (int ,scalar_t__) ;
 int Vdp1Ram ;
 TYPE_1__* Vdp1Regs ;

void VIDGCDVdp1LocalCoordinate(u8 * ram, Vdp1 * regs)
{
   Vdp1Regs->localX = T1ReadWord(Vdp1Ram, Vdp1Regs->addr + 0xC);
   Vdp1Regs->localY = T1ReadWord(Vdp1Ram, Vdp1Regs->addr + 0xE);
}
