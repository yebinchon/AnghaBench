
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int ccv_nnc_cmd_t ;


 scalar_t__ ccv_nnc_cmd_bitmask (int const,int,int,int*,int,int*,int) ;

int ccv_nnc_minimizer_saved_aux_size(const ccv_nnc_cmd_t minimizer)
{
 int i, aux_size = -1;
 uint64_t input_bitmask = 0x1;
 uint64_t output_bitmask = 0x0;
 for (i = 0; i < 62 && aux_size < 0; i++)
 {
  input_bitmask |= ((uint64_t)1 << (i + 1));
  output_bitmask |= ((uint64_t)1 << i);
  if (ccv_nnc_cmd_bitmask(minimizer, i + 2, i + 1, &input_bitmask, 1, &output_bitmask, 1))
   aux_size = i;
 }
 return aux_size;
}
