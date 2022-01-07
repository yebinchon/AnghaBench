
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int neighbor_discovery_context; TYPE_1__* (* neighbor_discovery ) (int const,int ) ;} ;
typedef TYPE_1__ ccv_nnc_stream_context_t ;


 TYPE_1__* stub1 (int const,int ) ;

ccv_nnc_stream_context_t* ccv_nnc_stream_context_find_neighbor(ccv_nnc_stream_context_t* const stream_context, const int device_id)
{
 if (stream_context->neighbor_discovery)
  return stream_context->neighbor_discovery(device_id, stream_context->neighbor_discovery_context);
 return 0;
}
