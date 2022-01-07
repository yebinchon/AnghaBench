
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vc_container_net_status_t ;






 int VC_CONTAINER_NET_ERROR_GENERAL ;
 int VC_CONTAINER_NET_ERROR_HOST_NOT_FOUND ;
 int VC_CONTAINER_NET_ERROR_NO_MEMORY ;
 int VC_CONTAINER_NET_ERROR_TRY_AGAIN ;

__attribute__((used)) static vc_container_net_status_t translate_getnameinfo_error( int error )
{
   switch (error)
   {
   case 131: return VC_CONTAINER_NET_ERROR_TRY_AGAIN;
   case 130: return VC_CONTAINER_NET_ERROR_HOST_NOT_FOUND;
   case 129: return VC_CONTAINER_NET_ERROR_NO_MEMORY;
   case 128: return VC_CONTAINER_NET_ERROR_HOST_NOT_FOUND;


   default:
      return VC_CONTAINER_NET_ERROR_GENERAL;
   }
}
