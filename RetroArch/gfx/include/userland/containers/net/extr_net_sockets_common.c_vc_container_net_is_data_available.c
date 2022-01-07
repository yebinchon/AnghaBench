
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; int status; } ;
typedef TYPE_1__ VC_CONTAINER_NET_T ;


 scalar_t__ DATAGRAM_SENDER ;
 int VC_CONTAINER_NET_ERROR_NOT_ALLOWED ;
 int socket_wait_for_data (TYPE_1__*,int ) ;

bool vc_container_net_is_data_available( VC_CONTAINER_NET_T *p_ctx )
{
   if (!p_ctx)
      return 0;

   if (p_ctx->type == DATAGRAM_SENDER)
   {
      p_ctx->status = VC_CONTAINER_NET_ERROR_NOT_ALLOWED;
      return 0;
   }

   return socket_wait_for_data(p_ctx, 0);
}
