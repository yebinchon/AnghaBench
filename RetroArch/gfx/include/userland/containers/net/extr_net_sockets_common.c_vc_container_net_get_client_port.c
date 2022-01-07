
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vc_container_net_status_t ;
struct TYPE_8__ {int sin6_port; } ;
struct TYPE_7__ {int sin_port; } ;
struct TYPE_10__ {int sa_family; } ;
struct TYPE_9__ {TYPE_2__ in6; TYPE_1__ in; TYPE_4__ sa; } ;
struct TYPE_11__ {scalar_t__ socket; int status; TYPE_3__ to_addr; } ;
typedef TYPE_5__ VC_CONTAINER_NET_T ;




 scalar_t__ INVALID_SOCKET ;
 int VC_CONTAINER_NET_ERROR_GENERAL ;
 int VC_CONTAINER_NET_ERROR_INVALID_PARAMETER ;
 int VC_CONTAINER_NET_ERROR_INVALID_SOCKET ;
 int VC_CONTAINER_NET_ERROR_NOT_CONNECTED ;
 int VC_CONTAINER_NET_SUCCESS ;
 unsigned short ntohs (int ) ;

vc_container_net_status_t vc_container_net_get_client_port( VC_CONTAINER_NET_T *p_ctx , unsigned short *port )
{
   if (!p_ctx)
      return VC_CONTAINER_NET_ERROR_INVALID_SOCKET;

   if (p_ctx->socket == INVALID_SOCKET)
      p_ctx->status = VC_CONTAINER_NET_ERROR_NOT_CONNECTED;
   else if (!port)
      p_ctx->status = VC_CONTAINER_NET_ERROR_INVALID_PARAMETER;
   else
   {
      p_ctx->status = VC_CONTAINER_NET_SUCCESS;
      switch (p_ctx->to_addr.sa.sa_family)
      {
      case 129:
         *port = ntohs(p_ctx->to_addr.in.sin_port);
         break;
      case 128:
         *port = ntohs(p_ctx->to_addr.in6.sin6_port);
         break;
      default:

         p_ctx->status = VC_CONTAINER_NET_ERROR_GENERAL;
      }
   }

   return p_ctx->status;
}
