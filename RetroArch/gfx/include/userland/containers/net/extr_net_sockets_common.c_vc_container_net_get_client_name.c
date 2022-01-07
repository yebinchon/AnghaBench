
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vc_container_net_status_t ;
struct TYPE_4__ {int sa; } ;
struct TYPE_5__ {scalar_t__ socket; int status; int to_addr_len; TYPE_1__ to_addr; } ;
typedef TYPE_2__ VC_CONTAINER_NET_T ;


 scalar_t__ INVALID_SOCKET ;
 int VC_CONTAINER_NET_ERROR_INVALID_PARAMETER ;
 int VC_CONTAINER_NET_ERROR_INVALID_SOCKET ;
 int VC_CONTAINER_NET_ERROR_NOT_CONNECTED ;
 int VC_CONTAINER_NET_SUCCESS ;
 int getnameinfo (int *,int ,char*,size_t,int *,int ,int ) ;
 int translate_getnameinfo_error (int) ;

vc_container_net_status_t vc_container_net_get_client_name( VC_CONTAINER_NET_T *p_ctx, char *name, size_t name_len )
{
   int result;

   if (!p_ctx)
      return VC_CONTAINER_NET_ERROR_INVALID_SOCKET;

   if (p_ctx->socket == INVALID_SOCKET)
      p_ctx->status = VC_CONTAINER_NET_ERROR_NOT_CONNECTED;
   else if (!name || !name_len)
      p_ctx->status = VC_CONTAINER_NET_ERROR_INVALID_PARAMETER;
   else if ((result = getnameinfo(&p_ctx->to_addr.sa, p_ctx->to_addr_len, name, name_len, ((void*)0), 0, 0)) != 0)
      p_ctx->status = translate_getnameinfo_error(result);
   else
      p_ctx->status = VC_CONTAINER_NET_SUCCESS;

   return p_ctx->status;
}
