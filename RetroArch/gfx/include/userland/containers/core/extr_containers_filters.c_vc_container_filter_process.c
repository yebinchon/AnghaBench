
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int VC_CONTAINER_STATUS_T ;
typedef int VC_CONTAINER_PACKET_T ;
struct TYPE_4__ {int (* pf_process ) (TYPE_1__*,int *) ;} ;
typedef TYPE_1__ VC_CONTAINER_FILTER_T ;


 int stub1 (TYPE_1__*,int *) ;

VC_CONTAINER_STATUS_T vc_container_filter_process( VC_CONTAINER_FILTER_T *p_ctx, VC_CONTAINER_PACKET_T *p_packet )
{
   VC_CONTAINER_STATUS_T status;
   status = p_ctx->pf_process(p_ctx, p_packet);
   return status;
}
