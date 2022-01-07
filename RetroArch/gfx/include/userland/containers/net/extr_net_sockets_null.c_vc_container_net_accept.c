
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vc_container_net_status_t ;
typedef int **** VC_CONTAINER_NET_T ;


 int VC_CONTAINER_NET_ERROR_INVALID_SOCKET ;
 int VC_CONTAINER_PARAM_UNUSED (int ******) ;

vc_container_net_status_t vc_container_net_accept( VC_CONTAINER_NET_T *p_server_ctx, VC_CONTAINER_NET_T **pp_client_ctx )
{
   VC_CONTAINER_PARAM_UNUSED(p_server_ctx);
   VC_CONTAINER_PARAM_UNUSED(pp_client_ctx);

   return VC_CONTAINER_NET_ERROR_INVALID_SOCKET;
}
