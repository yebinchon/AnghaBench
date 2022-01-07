
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int NumberOfInterrupts; scalar_t__ isSleeping; scalar_t__ isIdle; TYPE_1__* interrupts; } ;
struct TYPE_3__ {int level; int vector; } ;


 int MappedMemoryReadLong (int) ;
 int MappedMemoryWriteLong (int,int) ;
 size_t SR ;
 TYPE_2__* SSH2 ;
 size_t VBR ;
 int get_addr_ht (int) ;
 int slave_ip ;
 int slave_pc ;
 int* slave_reg ;

void DynarecSlaveHandleInterrupts()
{
  if (SSH2->interrupts[SSH2->NumberOfInterrupts-1].level > ((slave_reg[SR]>>4)&0xF))
  {
    slave_reg[15] -= 4;
    MappedMemoryWriteLong(slave_reg[15], slave_reg[SR]);
    slave_reg[15] -= 4;
    MappedMemoryWriteLong(slave_reg[15], slave_pc);
    slave_reg[SR] &= 0xFFFFFF0F;
    slave_reg[SR] |= (SSH2->interrupts[SSH2->NumberOfInterrupts-1].level)<<4;
    slave_pc = MappedMemoryReadLong(slave_reg[VBR] + (SSH2->interrupts[SSH2->NumberOfInterrupts-1].vector << 2));
    slave_ip = get_addr_ht(slave_pc|1);
    SSH2->NumberOfInterrupts--;
    SSH2->isIdle = 0;
    SSH2->isSleeping = 0;
  }


}
