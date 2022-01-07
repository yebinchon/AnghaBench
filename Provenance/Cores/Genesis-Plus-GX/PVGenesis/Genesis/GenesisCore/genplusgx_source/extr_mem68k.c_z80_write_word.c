
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int z80_write_byte (unsigned int,unsigned int) ;

void z80_write_word(unsigned int address, unsigned int data)
{
  z80_write_byte(address, data >> 8);
}
