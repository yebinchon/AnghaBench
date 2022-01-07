
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CCV_NNC_MAX_DIM_ALLOC ;

__attribute__((used)) static inline size_t ccv_nnc_dimension_count(const int dim[CCV_NNC_MAX_DIM_ALLOC])
{
 if (dim[0] == 0)
  return 0;
 int i;
 size_t count = 1;
 for (i = 0; i < CCV_NNC_MAX_DIM_ALLOC && dim[i] > 0; i++)
  count *= dim[i];
 return count;
}
