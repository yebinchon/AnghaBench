
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ccv_nnc_stream_context_t ;



__attribute__((used)) static ccv_nnc_stream_context_t* _neighbor_discovery(const int device_id, void* const contexts)
{
 ccv_nnc_stream_context_t** stream_contexts = (ccv_nnc_stream_context_t**)contexts;
 return stream_contexts[device_id];
}
