
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vc_container_net_status_t ;
typedef char const* vc_container_net_open_flags_t ;
typedef int VC_CONTAINER_NET_T ;


 int VC_CONTAINER_NET_ERROR_NOT_ALLOWED ;
 int VC_CONTAINER_PARAM_UNUSED (char const*) ;

VC_CONTAINER_NET_T *vc_container_net_open( const char *address, const char *port,
      vc_container_net_open_flags_t flags, vc_container_net_status_t *p_status )
{
   VC_CONTAINER_PARAM_UNUSED(address);
   VC_CONTAINER_PARAM_UNUSED(port);
   VC_CONTAINER_PARAM_UNUSED(flags);

   if (p_status)
      *p_status = VC_CONTAINER_NET_ERROR_NOT_ALLOWED;

   return ((void*)0);
}
