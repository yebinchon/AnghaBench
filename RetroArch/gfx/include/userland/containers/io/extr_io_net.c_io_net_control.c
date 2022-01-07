
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vc_container_net_status_t ;
typedef int va_list ;
struct VC_CONTAINER_IO_T {int status; TYPE_1__* module; } ;
typedef int VC_CONTAINER_STATUS_T ;
typedef int VC_CONTAINER_CONTROL_T ;
struct TYPE_2__ {int sock; } ;




 int VC_CONTAINER_NET_CONTROL_SET_READ_BUFFER_SIZE ;
 int VC_CONTAINER_NET_CONTROL_SET_READ_TIMEOUT_MS ;
 int VC_CONTAINER_NET_ERROR_NOT_ALLOWED ;
 int translate_net_status_to_container_status (int ) ;
 int vc_container_net_control (int ,int ,int ) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T io_net_control(struct VC_CONTAINER_IO_T *p_ctx,
      VC_CONTAINER_CONTROL_T operation,
      va_list args)
{
   vc_container_net_status_t net_status;
   VC_CONTAINER_STATUS_T status;

   switch (operation)
   {
   case 129:
      net_status = vc_container_net_control(p_ctx->module->sock, VC_CONTAINER_NET_CONTROL_SET_READ_BUFFER_SIZE, args);
      break;
   case 128:
      net_status = vc_container_net_control(p_ctx->module->sock, VC_CONTAINER_NET_CONTROL_SET_READ_TIMEOUT_MS, args);
      break;
   default:
      net_status = VC_CONTAINER_NET_ERROR_NOT_ALLOWED;
   }

   status = translate_net_status_to_container_status(net_status);
   p_ctx->status = status;

   return status;
}
