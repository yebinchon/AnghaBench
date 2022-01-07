
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* memregs ;

void pause940(int yes)
{
 if (yes)
  memregs[0x0904>>1] &= 0xFFFE;
 else
  memregs[0x0904>>1] |= 1;
}
