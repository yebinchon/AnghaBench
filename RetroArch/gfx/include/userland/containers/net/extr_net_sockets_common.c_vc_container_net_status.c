
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vc_container_net_status_t ;
struct TYPE_3__ {int status; } ;
typedef TYPE_1__ VC_CONTAINER_NET_T ;


 int VC_CONTAINER_NET_ERROR_INVALID_SOCKET ;

vc_container_net_status_t vc_container_net_status( VC_CONTAINER_NET_T *p_ctx )
{
   if (!p_ctx)
      return VC_CONTAINER_NET_ERROR_INVALID_SOCKET;
   return p_ctx->status;
}
