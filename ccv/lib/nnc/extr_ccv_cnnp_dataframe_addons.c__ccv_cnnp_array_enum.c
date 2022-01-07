
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ccv_nnc_stream_context_t ;
typedef int ccv_array_t ;


 void* ccv_array_get (int * const,int const) ;

__attribute__((used)) static void _ccv_cnnp_array_enum(const int column_idx, const int* const row_idxs, const int row_size, void** const data, void* const context, ccv_nnc_stream_context_t* const stream_context)
{
 int i;
 ccv_array_t* const array = (ccv_array_t*)context;
 for (i = 0; i < row_size; i++)
  data[i] = ccv_array_get(array, row_idxs[i]);
}
