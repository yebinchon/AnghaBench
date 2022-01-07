
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sa; } ;
struct TYPE_6__ {int type; void* status; int to_addr_len; TYPE_1__ to_addr; int socket; int read_timeout_ms; } ;
typedef TYPE_2__ VC_CONTAINER_NET_T ;



 int SOCKET_ERROR ;


 void* VC_CONTAINER_NET_ERROR_CONNECTION_LOST ;
 void* VC_CONTAINER_NET_ERROR_INVALID_PARAMETER ;
 void* VC_CONTAINER_NET_ERROR_NOT_ALLOWED ;
 void* VC_CONTAINER_NET_ERROR_TIMED_OUT ;
 void* VC_CONTAINER_NET_SUCCESS ;
 int recv (int ,void*,int,int ) ;
 int recvfrom (int ,void*,size_t,int ,int *,int *) ;
 int socket_wait_for_data (TYPE_2__*,int ) ;
 void* vc_container_net_private_last_error () ;

size_t vc_container_net_read( VC_CONTAINER_NET_T *p_ctx, void *buffer, size_t size )
{
   int result = 0;

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

      if (socket_wait_for_data(p_ctx, p_ctx->read_timeout_ms))
      {
         result = recv(p_ctx->socket, buffer, (int)size, 0);
         if (!result)
            p_ctx->status = VC_CONTAINER_NET_ERROR_CONNECTION_LOST;
      } else
         p_ctx->status = VC_CONTAINER_NET_ERROR_TIMED_OUT;
      break;

   case 130:
      {


         if (socket_wait_for_data(p_ctx, p_ctx->read_timeout_ms))
         {
            result = recvfrom(p_ctx->socket, buffer, size, 0, &p_ctx->to_addr.sa, &p_ctx->to_addr_len);
            if (!result)
               p_ctx->status = VC_CONTAINER_NET_ERROR_CONNECTION_LOST;
         } else
            p_ctx->status = VC_CONTAINER_NET_ERROR_TIMED_OUT;
      }
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
