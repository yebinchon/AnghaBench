
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vc_container_net_status_t ;
typedef int uint32_t ;
struct TYPE_3__ {int read_timeout_ms; } ;
typedef TYPE_1__ VC_CONTAINER_NET_T ;


 int VC_CONTAINER_NET_SUCCESS ;

__attribute__((used)) static vc_container_net_status_t socket_set_read_timeout_ms(VC_CONTAINER_NET_T *p_ctx,
      uint32_t timeout_ms)
{
   p_ctx->read_timeout_ms = timeout_ms;
   return VC_CONTAINER_NET_SUCCESS;
}
