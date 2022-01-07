
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int _ccv_nnc_sgd_allow_inplace(const int input_idx, const int input_size, const int output_idx, const int output_size)
{
 if (input_idx == output_idx + 1)
  return 1;
 return 0;
}
