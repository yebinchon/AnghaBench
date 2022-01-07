
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef size_t uint32_t ;



__attribute__((used)) static uint64_t GetSum(const uint64_t *values, uint32_t idx)
{
  uint64_t sum = 0;
  uint32_t i;
  for (i = 0; i < idx; i++)
    sum += values[i];
  return sum;
}
