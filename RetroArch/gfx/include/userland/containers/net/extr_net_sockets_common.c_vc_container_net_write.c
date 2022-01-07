
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sa; } ;
struct TYPE_5__ {int type; size_t max_datagram_size; int status; int to_addr_len; TYPE_1__ to_addr; int socket; } ;
typedef TYPE_2__ VC_CONTAINER_NET_T ;



 int SOCKET_ERROR ;


 int VC_CONTAINER_NET_ERROR_INVALID_PARAMETER ;
 int VC_CONTAINER_NET_ERROR_NOT_ALLOWED ;
 int VC_CONTAINER_NET_SUCCESS ;
 int send (int ,void const*,int,int ) ;
 int sendto (int ,void const*,size_t,int ,int *,int ) ;
 int vc_container_net_private_last_error () ;

size_t vc_container_net_write( VC_CONTAINER_NET_T *p_ctx, const void *buffer, size_t size )
{
   int result;

   if (!p_ctx)
      return 0;

   if (!buffer)
   {
      p_ctx->status = VC_CONTAINER_NET_ERROR_INVALID_PARAMETER;
      return 0;
   }

   p_ctx->status = VC_CONTAINER_NET_SUCCESS;

   switch (p_ctx->type)
   {
   case 129:
   case 128:

      result = send(p_ctx->socket, buffer, (int)size, 0);
      break;

   case 130:


      if (size > p_ctx->max_datagram_size)
         size = p_ctx->max_datagram_size;

      result = sendto(p_ctx->socket, buffer, size, 0, &p_ctx->to_addr.sa, p_ctx->to_addr_len);
      break;

   default:
      p_ctx->status = VC_CONTAINER_NET_ERROR_NOT_ALLOWED;
      result = 0;
      break;
   }

   if (result == SOCKET_ERROR)
   {
      p_ctx->status = vc_container_net_private_last_error();
      result = 0;
   }

   return (size_t)result;
}
