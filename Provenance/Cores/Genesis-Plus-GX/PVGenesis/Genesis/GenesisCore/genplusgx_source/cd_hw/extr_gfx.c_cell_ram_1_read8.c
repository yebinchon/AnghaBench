
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int* lut_offset; } ;
struct TYPE_3__ {int * word_ram; } ;


 unsigned int READ_BYTE (int ,unsigned int) ;
 TYPE_2__ gfx ;
 TYPE_1__ scd ;

unsigned int cell_ram_1_read8(unsigned int address)
{
  address = gfx.lut_offset[(address >> 2) & 0x7fff] | (address & 0x10003);
  return READ_BYTE(scd.word_ram[1], address);
}
