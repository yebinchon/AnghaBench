
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int* regs; } ;


 TYPE_1__ ggenie ;

__attribute__((used)) static unsigned int ggenie_read_byte(unsigned int address)
{
  unsigned int data = ggenie.regs[(address >> 1) & 0x1f];
  return ((address & 1) ? (data & 0xff) : ((data >> 8) & 0xff));
}
