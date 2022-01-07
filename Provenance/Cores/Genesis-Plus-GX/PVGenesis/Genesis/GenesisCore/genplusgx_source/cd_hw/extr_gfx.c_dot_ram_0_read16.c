
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_2__ {int * word_ram; } ;


 int READ_BYTE (int ,unsigned int) ;
 TYPE_1__ scd ;

unsigned int dot_ram_0_read16(unsigned int address)
{
  uint8 data = READ_BYTE(scd.word_ram[0], (address >> 1) & 0x1ffff);
  return ((data & 0x0f) | ((data << 4) & 0xf00));
}
