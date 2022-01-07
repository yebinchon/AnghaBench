
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vc_container_net_status_t ;
struct TYPE_4__ {scalar_t__ socket; } ;
typedef TYPE_1__ VC_CONTAINER_NET_T ;


 scalar_t__ INVALID_SOCKET ;
 int VC_CONTAINER_NET_ERROR_INVALID_SOCKET ;
 int VC_CONTAINER_NET_SUCCESS ;
 int free (TYPE_1__*) ;
 int vc_container_net_private_close (scalar_t__) ;
 int vc_container_net_private_deinit () ;

vc_container_net_status_t vc_container_net_close( VC_CONTAINER_NET_T *p_ctx )
{
   if (!p_ctx)
      return VC_CONTAINER_NET_ERROR_INVALID_SOCKET;

   if (p_ctx->socket != INVALID_SOCKET)
   {
      vc_container_net_private_close(p_ctx->socket);
      p_ctx->socket = INVALID_SOCKET;
   }
   free(p_ctx);

   vc_container_net_private_deinit();

   return VC_CONTAINER_NET_SUCCESS;
}
