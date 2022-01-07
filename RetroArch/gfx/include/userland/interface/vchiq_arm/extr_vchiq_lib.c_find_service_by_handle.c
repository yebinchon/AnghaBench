
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ lib_handle; } ;
typedef TYPE_1__ VCHIQ_SERVICE_T ;
typedef scalar_t__ VCHIQ_SERVICE_HANDLE_T ;


 TYPE_1__* handle_to_service (scalar_t__) ;
 int vcos_log_info (char*,scalar_t__) ;

__attribute__((used)) static VCHIQ_SERVICE_T *
find_service_by_handle(VCHIQ_SERVICE_HANDLE_T handle)
{
   VCHIQ_SERVICE_T *service;

   service = handle_to_service(handle);
   if (service && (service->lib_handle != handle))
      service = ((void*)0);

   if (!service)
      vcos_log_info("Invalid service handle 0x%x", handle);

   return service;
}
