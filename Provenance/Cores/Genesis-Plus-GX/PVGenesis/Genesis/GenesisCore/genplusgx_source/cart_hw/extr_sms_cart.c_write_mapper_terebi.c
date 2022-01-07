
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int terebi_oekaki_write (unsigned char) ;
 unsigned char** z80_writemap ;

__attribute__((used)) static void write_mapper_terebi(unsigned int address, unsigned char data)
{
  if (address == 0x6000)
  {
    terebi_oekaki_write(data);
    return;
  }

  z80_writemap[address >> 10][address & 0x03FF] = data;
}
