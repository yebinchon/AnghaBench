
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int uint16 ;
struct TYPE_4__ {unsigned int* lut_offset; } ;
struct TYPE_3__ {scalar_t__* word_ram; } ;


 TYPE_2__ gfx ;
 TYPE_1__ scd ;

void cell_ram_1_write16(unsigned int address, unsigned int data)
{
  address = gfx.lut_offset[(address >> 2) & 0x7fff] | (address & 0x10002);
  *(uint16 *)(scd.word_ram[1] + address) = data;
}
