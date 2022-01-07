
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef scalar_t__ uint16_t ;
typedef scalar_t__ m68k_reg ;



__attribute__((used)) static int exists_reg_list(uint16_t *regs, uint8_t count, m68k_reg reg)
{
 uint8_t i;

 for (i = 0; i < count; ++i) {
  if (regs[i] == (uint16_t)reg)
   return 1;
 }

 return 0;
}
