
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8 ;
struct TYPE_2__ {int* regs; } ;


 TYPE_1__ ggenie ;
 int ggenie_write_regs (size_t,unsigned int) ;

__attribute__((used)) static void ggenie_write_byte(unsigned int address, unsigned int data)
{

  uint8 offset = (address >> 1) & 0x1f;


  if (address & 1)
  {
    data = (ggenie.regs[offset] & 0xff00) | (data & 0xff);
  }
  else
  {
    data = (ggenie.regs[offset] & 0x00ff) | ((data & 0xff) << 8);
  }


  ggenie_write_regs(offset,data);
}
