
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CCV_NNC_MAX_DIM_ALLOC ;

__attribute__((used)) static inline int ccv_nnc_tensor_nd(const int dim[CCV_NNC_MAX_DIM_ALLOC])
{
 int i;
 for (i = 0; i < CCV_NNC_MAX_DIM_ALLOC; i++)
  if (dim[i] == 0)
   return i;
 return CCV_NNC_MAX_DIM_ALLOC;
}
