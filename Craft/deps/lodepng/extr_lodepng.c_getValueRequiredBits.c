
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
unsigned getValueRequiredBits(unsigned short value)
{
  if(value == 0 || value == 255) return 1;

  if(value % 17 == 0) return value % 85 == 0 ? 2 : 4;
  return 8;
}
