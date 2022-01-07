
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vc_container_net_status_t ;
typedef int uint32_t ;
typedef int buffer_size ;
struct TYPE_3__ {int socket; } ;
typedef TYPE_1__ VC_CONTAINER_NET_T ;
typedef int SOCKOPT_CAST_T ;


 int SOCKET_ERROR ;
 int SOL_SOCKET ;
 int SO_RCVBUF ;
 int VC_CONTAINER_NET_SUCCESS ;
 int setsockopt (int ,int ,int ,int const,int) ;
 int vc_container_net_private_last_error () ;

__attribute__((used)) static vc_container_net_status_t socket_set_read_buffer_size(VC_CONTAINER_NET_T *p_ctx,
      uint32_t buffer_size)
{
   int result;
   const SOCKOPT_CAST_T optptr = (const SOCKOPT_CAST_T)&buffer_size;

   result = setsockopt(p_ctx->socket, SOL_SOCKET, SO_RCVBUF, optptr, sizeof(buffer_size));

   if (result == SOCKET_ERROR)
      return vc_container_net_private_last_error();

   return VC_CONTAINER_NET_SUCCESS;
}
