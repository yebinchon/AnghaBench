
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ccv_nnc_stream_context_t ;



__attribute__((used)) static void _ccv_iter_reduce_int(void** const input_data, const int batch_size, void** const data, void* const context, ccv_nnc_stream_context_t* const stream_context)
{
 int i;
 int total = 0;
 for (i = 0; i < batch_size; i++)
  total += (int)(intptr_t)input_data[i];
 data[0] = (void*)(intptr_t)total;
}
