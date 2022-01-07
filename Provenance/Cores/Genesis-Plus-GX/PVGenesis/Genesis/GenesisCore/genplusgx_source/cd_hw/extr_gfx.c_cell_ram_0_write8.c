
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int* lut_offset; } ;
struct TYPE_3__ {int * word_ram; } ;


 int WRITE_BYTE (int ,unsigned int,unsigned int) ;
 TYPE_2__ gfx ;
 TYPE_1__ scd ;

void cell_ram_0_write8(unsigned int address, unsigned int data)
{
  address = gfx.lut_offset[(address >> 2) & 0x7fff] | (address & 0x10003);
  WRITE_BYTE(scd.word_ram[0], address, data);
}
