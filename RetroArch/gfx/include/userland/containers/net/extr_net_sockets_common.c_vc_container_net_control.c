
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vc_container_net_status_t ;
typedef int vc_container_net_control_t ;
typedef int va_list ;
typedef int VC_CONTAINER_NET_T ;




 int VC_CONTAINER_NET_ERROR_NOT_ALLOWED ;
 int socket_set_read_buffer_size (int *,int ) ;
 int socket_set_read_timeout_ms (int *,int ) ;
 int uint32_t ;
 int va_arg (int ,int ) ;

vc_container_net_status_t vc_container_net_control( VC_CONTAINER_NET_T *p_ctx,
      vc_container_net_control_t operation,
      va_list args)
{
   vc_container_net_status_t status;

   switch (operation)
   {
   case 129:
      status = socket_set_read_buffer_size(p_ctx, va_arg(args, uint32_t));
      break;
   case 128:
      status = socket_set_read_timeout_ms(p_ctx, va_arg(args, uint32_t));
      break;
   default:
      status = VC_CONTAINER_NET_ERROR_NOT_ALLOWED;
   }

   return status;
}
