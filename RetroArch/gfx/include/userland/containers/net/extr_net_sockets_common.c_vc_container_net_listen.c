
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vc_container_net_status_t ;
typedef int uint32_t ;
struct TYPE_3__ {scalar_t__ type; int status; int socket; } ;
typedef TYPE_1__ VC_CONTAINER_NET_T ;


 scalar_t__ SOCKET_ERROR ;
 scalar_t__ STREAM_SERVER ;
 int VC_CONTAINER_NET_ERROR_INVALID_SOCKET ;
 int VC_CONTAINER_NET_ERROR_NOT_ALLOWED ;
 int VC_CONTAINER_NET_SUCCESS ;
 scalar_t__ listen (int ,int ) ;
 int vc_container_net_private_last_error () ;

vc_container_net_status_t vc_container_net_listen( VC_CONTAINER_NET_T *p_ctx, uint32_t maximum_connections )
{
   if (!p_ctx)
      return VC_CONTAINER_NET_ERROR_INVALID_SOCKET;

   p_ctx->status = VC_CONTAINER_NET_SUCCESS;

   if (p_ctx->type == STREAM_SERVER)
   {
      if (listen(p_ctx->socket, maximum_connections) == SOCKET_ERROR)
         p_ctx->status = vc_container_net_private_last_error();
   } else {
      p_ctx->status = VC_CONTAINER_NET_ERROR_NOT_ALLOWED;
   }

   return p_ctx->status;
}
