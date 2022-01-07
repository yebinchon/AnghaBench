
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VC_SERVICE_VCHI_STATUS_T ;






const char* vchi2service_status_string(VC_SERVICE_VCHI_STATUS_T status) {
   const char* string = "";
   switch(status) {
   case 128:
      string = "success"; break;
   case 130:
      string = "vchiq error"; break;
   case 129:
      string = "retry"; break;
   default:
      string = "unknown";
   }
   return string;
}
