
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mapper_16k_w (int,unsigned char) ;
 unsigned char** z80_writemap ;

__attribute__((used)) static void write_mapper_korea(unsigned int address, unsigned char data)
{
  if (address == 0xA000)
  {
    mapper_16k_w(3,data);
    return;
  }

  z80_writemap[address >> 10][address & 0x03FF] = data;
}
