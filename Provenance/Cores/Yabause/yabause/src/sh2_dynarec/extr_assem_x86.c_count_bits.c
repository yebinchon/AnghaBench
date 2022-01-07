
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



unsigned int count_bits(u32 reglist)
{
  int count=0;
  while(reglist)
  {
    count+=reglist&1;
    reglist>>=1;
  }
  return count;
}
