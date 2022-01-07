
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t max_datagram_size; } ;
typedef TYPE_1__ VC_CONTAINER_NET_T ;



size_t vc_container_net_maximum_datagram_size( VC_CONTAINER_NET_T *p_ctx )
{
   return p_ctx ? p_ctx->max_datagram_size : 0;
}
