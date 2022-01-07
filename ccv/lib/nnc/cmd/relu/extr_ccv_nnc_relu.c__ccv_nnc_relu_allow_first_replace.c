
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int _ccv_nnc_relu_allow_first_replace(const int input_idx, const int input_size, const int output_idx, const int output_size)
{
 return input_idx == 0 && output_idx == 0;
}
