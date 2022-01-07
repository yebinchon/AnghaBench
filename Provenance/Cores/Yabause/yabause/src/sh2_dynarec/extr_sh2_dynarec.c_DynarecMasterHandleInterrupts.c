
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int NumberOfInterrupts; scalar_t__ isSleeping; scalar_t__ isIdle; TYPE_1__* interrupts; } ;
struct TYPE_3__ {int level; int vector; } ;


 TYPE_2__* MSH2 ;
 int MappedMemoryReadLong (int) ;
 int MappedMemoryWriteLong (int,int) ;
 size_t SR ;
 size_t VBR ;
 int get_addr_ht (int) ;
 int master_ip ;
 int master_pc ;
 int* master_reg ;

void DynarecMasterHandleInterrupts()
{
  if (MSH2->interrupts[MSH2->NumberOfInterrupts-1].level > ((master_reg[SR]>>4)&0xF))
  {
    master_reg[15] -= 4;
    MappedMemoryWriteLong(master_reg[15], master_reg[SR]);
    master_reg[15] -= 4;
    MappedMemoryWriteLong(master_reg[15], master_pc);
    master_reg[SR] &= 0xFFFFFF0F;
    master_reg[SR] |= (MSH2->interrupts[MSH2->NumberOfInterrupts-1].level)<<4;
    master_pc = MappedMemoryReadLong(master_reg[VBR] + (MSH2->interrupts[MSH2->NumberOfInterrupts-1].vector << 2));
    master_ip = get_addr_ht(master_pc);
    MSH2->NumberOfInterrupts--;
    MSH2->isIdle = 0;
    MSH2->isSleeping = 0;
  }



}
