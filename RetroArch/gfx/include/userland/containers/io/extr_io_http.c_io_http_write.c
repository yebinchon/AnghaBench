
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vc_container_net_status_t ;
struct TYPE_5__ {int status; TYPE_1__* module; } ;
typedef TYPE_2__ VC_CONTAINER_IO_T ;
struct TYPE_4__ {int sock; } ;


 int translate_net_status_to_container_status (int ) ;
 int vc_container_net_status (int ) ;
 size_t vc_container_net_write (int ,void const*,size_t) ;

__attribute__((used)) static size_t io_http_write(VC_CONTAINER_IO_T *p_ctx, const void *buffer, size_t size)
{
   size_t ret = vc_container_net_write(p_ctx->module->sock, buffer, size);
   vc_container_net_status_t net_status;

   net_status = vc_container_net_status(p_ctx->module->sock);
   p_ctx->status = translate_net_status_to_container_status(net_status);

   return ret;
}
