
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct timeval {int tv_sec; int tv_usec; } ;
typedef int fd_set ;
struct TYPE_3__ {int status; scalar_t__ socket; } ;
typedef TYPE_1__ VC_CONTAINER_NET_T ;


 int FD_SET (scalar_t__,int *) ;
 int FD_ZERO (int *) ;
 int INFINITE_TIMEOUT_MS ;
 int SOCKET_ERROR ;
 int VC_CONTAINER_NET_SUCCESS ;
 int select (scalar_t__,int *,int *,int *,struct timeval*) ;
 int vc_container_net_private_last_error () ;

__attribute__((used)) static bool socket_wait_for_data( VC_CONTAINER_NET_T *p_ctx, uint32_t timeout_ms )
{
   int result;
   fd_set set;
   struct timeval tv;

   if (timeout_ms == INFINITE_TIMEOUT_MS)
      return 1;

   FD_ZERO(&set);
   FD_SET(p_ctx->socket, &set);
   tv.tv_sec = timeout_ms / 1000;
   tv.tv_usec = (timeout_ms - tv.tv_sec * 1000) * 1000;
   result = select(p_ctx->socket + 1, &set, ((void*)0), ((void*)0), &tv);

   if (result == SOCKET_ERROR)
      p_ctx->status = vc_container_net_private_last_error();
   else
      p_ctx->status = VC_CONTAINER_NET_SUCCESS;

   return (result == 1);
}
