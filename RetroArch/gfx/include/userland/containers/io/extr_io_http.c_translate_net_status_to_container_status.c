
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vc_container_net_status_t ;
typedef int VC_CONTAINER_STATUS_T ;


 int VC_CONTAINER_ERROR_ABORTED ;
 int VC_CONTAINER_ERROR_CONTINUE ;
 int VC_CONTAINER_ERROR_EOS ;
 int VC_CONTAINER_ERROR_FAILED ;
 int VC_CONTAINER_ERROR_INVALID_ARGUMENT ;
 int VC_CONTAINER_ERROR_NOT_FOUND ;
 int VC_CONTAINER_ERROR_OUT_OF_MEMORY ;
 int VC_CONTAINER_ERROR_UNSUPPORTED_OPERATION ;
 int VC_CONTAINER_ERROR_URI_OPEN_FAILED ;
 int VC_CONTAINER_SUCCESS ;

__attribute__((used)) static VC_CONTAINER_STATUS_T translate_net_status_to_container_status(vc_container_net_status_t net_status)
{
   switch (net_status)
   {
   case 128: return VC_CONTAINER_SUCCESS;
   case 136: return VC_CONTAINER_ERROR_INVALID_ARGUMENT;
   case 133: return VC_CONTAINER_ERROR_UNSUPPORTED_OPERATION;
   case 137: return VC_CONTAINER_ERROR_INVALID_ARGUMENT;
   case 131: return VC_CONTAINER_ERROR_OUT_OF_MEMORY;
   case 135: return VC_CONTAINER_ERROR_URI_OPEN_FAILED;
   case 134: return VC_CONTAINER_ERROR_EOS;
   case 140: return VC_CONTAINER_ERROR_EOS;
   case 132: return VC_CONTAINER_ERROR_INVALID_ARGUMENT;
   case 130: return VC_CONTAINER_ERROR_ABORTED;
   case 139: return VC_CONTAINER_ERROR_NOT_FOUND;
   case 138: return VC_CONTAINER_ERROR_NOT_FOUND;
   case 129: return VC_CONTAINER_ERROR_CONTINUE;
   default: return VC_CONTAINER_ERROR_FAILED;
   }
}
