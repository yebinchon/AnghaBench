
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int VC_SERVICE_VCHI_STATUS_T ;





 int VC_SERVICE_VCHI_SUCCESS ;
 int VC_SERVICE_VCHI_UNKNOWN_ERROR ;
 int VC_SERVICE_VCHI_VCHIQ_ERROR ;
 int VC_SERVUCE_VCHI_RETRY ;

VC_SERVICE_VCHI_STATUS_T vchi2service_status(int32_t x) {
   VC_SERVICE_VCHI_STATUS_T ret;
   switch(x) {
   case 128:
      ret = VC_SERVICE_VCHI_SUCCESS; break;
   case 130:
      ret = VC_SERVICE_VCHI_VCHIQ_ERROR; break;
   case 129:
      ret = VC_SERVUCE_VCHI_RETRY; break;
   default:
      ret = VC_SERVICE_VCHI_UNKNOWN_ERROR;
   }
   return ret;
}
