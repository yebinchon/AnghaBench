
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int multiply(unsigned long *amount, long with)
{
  unsigned long sum = *amount * with;
  if(!with) {
    *amount = 0;
    return 0;
  }
  if(sum/with != *amount)
    return 1;
  *amount = sum;
  return 0;
}
