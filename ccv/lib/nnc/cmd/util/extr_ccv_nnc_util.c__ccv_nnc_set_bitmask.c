
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const uint64_t ;



__attribute__((used)) static int _ccv_nnc_set_bitmask(const int input_size, const int output_size, const uint64_t* const input_bitmasks, const int input_bitmask_size, const uint64_t* const output_bitmasks, const int output_bitmask_size)
{
 int i, j, flag = 0;
 int output_bitcount = 0;
 for (i = 0; i < output_bitmask_size; i++)
 {
  for (j = 0; j < 64; j++)
   if (output_bitmasks[i] & (uint64_t)1 << j)
   {
    if (flag)
     return 0;
   } else
    break;
  output_bitcount += j;


  if (j < 64)
   flag = 1;

  for (; j < 64; j++)
   if (output_bitmasks[i] & (uint64_t)1 << j)
    return 0;
 }
 return output_size == output_bitcount;
}
