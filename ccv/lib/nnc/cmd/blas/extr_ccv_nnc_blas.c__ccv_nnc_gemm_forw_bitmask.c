
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint64_t ;



__attribute__((used)) static int _ccv_nnc_gemm_forw_bitmask(const int input_size, const int output_size, const uint64_t* const input_bitmasks, const int input_bitmask_size, const uint64_t* const output_bitmasks, const int output_bitmask_size)
{
 if (input_size == 3 && (input_bitmasks[0] & 7u) == ((1u << 0) | (1u << 1) | (1u << 2)) && output_bitmasks[0] == 1u)
  return 1;

 if (input_size == 2 && (input_bitmasks[0] & 3u) == ((1u << 0) | (1u << 1)) && output_bitmasks[0] == 1u)
  return 1;
 return 0;
}
