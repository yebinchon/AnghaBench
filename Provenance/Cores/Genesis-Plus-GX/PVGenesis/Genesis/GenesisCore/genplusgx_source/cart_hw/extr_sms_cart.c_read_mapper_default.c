
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char** z80_readmap ;

__attribute__((used)) static unsigned char read_mapper_default(unsigned int address)
{
  return z80_readmap[address >> 10][address & 0x03FF];
}
