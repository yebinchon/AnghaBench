
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vc_container_net_status_t ;
typedef int * vc_container_net_control_t ;
typedef int * va_list ;
typedef int VC_CONTAINER_NET_T ;


 int VC_CONTAINER_NET_ERROR_NOT_ALLOWED ;
 int VC_CONTAINER_PARAM_UNUSED (int *) ;

vc_container_net_status_t vc_container_net_control( VC_CONTAINER_NET_T *p_ctx,
      vc_container_net_control_t operation,
      va_list args)
{
   VC_CONTAINER_PARAM_UNUSED(p_ctx);
   VC_CONTAINER_PARAM_UNUSED(operation);
   VC_CONTAINER_PARAM_UNUSED(args);

   return VC_CONTAINER_NET_ERROR_NOT_ALLOWED;
}
