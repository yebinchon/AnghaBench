
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ vc_container_net_status_t ;
struct TYPE_9__ {int sa; } ;
struct TYPE_8__ {scalar_t__ type; scalar_t__ status; scalar_t__ socket; int read_timeout_ms; int max_datagram_size; int to_addr_len; TYPE_5__ to_addr; } ;
typedef TYPE_1__ VC_CONTAINER_NET_T ;


 int INFINITE_TIMEOUT_MS ;
 scalar_t__ INVALID_SOCKET ;
 scalar_t__ STREAM_CLIENT ;
 scalar_t__ STREAM_SERVER ;
 scalar_t__ VC_CONTAINER_NET_ERROR_INVALID_PARAMETER ;
 scalar_t__ VC_CONTAINER_NET_ERROR_INVALID_SOCKET ;
 scalar_t__ VC_CONTAINER_NET_ERROR_NOT_ALLOWED ;
 scalar_t__ VC_CONTAINER_NET_ERROR_NO_MEMORY ;
 scalar_t__ VC_CONTAINER_NET_SUCCESS ;
 scalar_t__ accept (scalar_t__,int *,int *) ;
 int free (TYPE_1__*) ;
 scalar_t__ malloc (int) ;
 int memcpy (TYPE_5__*,TYPE_5__*,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ vc_container_net_private_init () ;
 scalar_t__ vc_container_net_private_last_error () ;
 int vc_container_net_private_maximum_datagram_size (scalar_t__) ;

vc_container_net_status_t vc_container_net_accept( VC_CONTAINER_NET_T *p_server_ctx, VC_CONTAINER_NET_T **pp_client_ctx )
{
   VC_CONTAINER_NET_T *p_client_ctx = ((void*)0);

   if (!p_server_ctx)
      return VC_CONTAINER_NET_ERROR_INVALID_SOCKET;

   if (!pp_client_ctx)
      return VC_CONTAINER_NET_ERROR_INVALID_PARAMETER;

   *pp_client_ctx = ((void*)0);

   if (p_server_ctx->type != STREAM_SERVER)
   {
      p_server_ctx->status = VC_CONTAINER_NET_ERROR_NOT_ALLOWED;
      goto error;
   }

   p_client_ctx = (VC_CONTAINER_NET_T *)malloc(sizeof(VC_CONTAINER_NET_T));
   if (!p_client_ctx)
   {
      p_server_ctx->status = VC_CONTAINER_NET_ERROR_NO_MEMORY;
      goto error;
   }


   memset(p_client_ctx, 0, sizeof(*p_client_ctx));
   memcpy(&p_client_ctx->to_addr, &p_server_ctx->to_addr, p_server_ctx->to_addr_len);
   p_client_ctx->to_addr_len = p_server_ctx->to_addr_len;

   p_client_ctx->socket = accept(p_server_ctx->socket, &p_client_ctx->to_addr.sa, &p_client_ctx->to_addr_len);

   if (p_client_ctx->socket == INVALID_SOCKET)
   {
      p_server_ctx->status = vc_container_net_private_last_error();
      goto error;
   }


   p_server_ctx->status = vc_container_net_private_init();
   if (p_server_ctx->status != VC_CONTAINER_NET_SUCCESS)
      goto error;

   p_client_ctx->type = STREAM_CLIENT;
   p_client_ctx->max_datagram_size = vc_container_net_private_maximum_datagram_size(p_client_ctx->socket);
   p_client_ctx->read_timeout_ms = INFINITE_TIMEOUT_MS;
   p_client_ctx->status = VC_CONTAINER_NET_SUCCESS;

   *pp_client_ctx = p_client_ctx;
   return VC_CONTAINER_NET_SUCCESS;

error:
   if (p_client_ctx)
      free(p_client_ctx);
   return p_server_ctx->status;
}
