
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* neighbor_discovery_context; int neighbor_discovery; } ;
typedef TYPE_1__ ccv_nnc_stream_context_t ;
typedef int ccv_nnc_stream_context_neighbor_discovery_f ;



void ccv_nnc_stream_context_set_neighbor_discovery(ccv_nnc_stream_context_t* const stream_context, ccv_nnc_stream_context_neighbor_discovery_f discovery, void* const context)
{
 stream_context->neighbor_discovery = discovery;
 stream_context->neighbor_discovery_context = context;
}
