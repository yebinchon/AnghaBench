
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* bram; } ;


 TYPE_1__ scd ;

__attribute__((used)) static unsigned int bram_read_word(unsigned int address)
{
  return (scd.bram[(address >> 1) & 0x1fff] | 0xff00);
}
