
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint8 ;


 int ggenie_write_regs (unsigned int,unsigned int) ;

__attribute__((used)) static void ggenie_write_word(unsigned int address, unsigned int data)
{

  uint8 offset = (address >> 1) & 0x1f;


  ggenie_write_regs(offset,data);
}
