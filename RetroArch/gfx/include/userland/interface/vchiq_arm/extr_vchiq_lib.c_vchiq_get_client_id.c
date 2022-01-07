
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int handle; int fd; } ;
typedef TYPE_1__ VCHIQ_SERVICE_T ;
typedef int VCHIQ_SERVICE_HANDLE_T ;


 int VCHIQ_ERROR ;
 int VCHIQ_IOC_GET_CLIENT_ID ;
 TYPE_1__* find_service_by_handle (int ) ;
 int ioctl (int ,int ,int ) ;

int
vchiq_get_client_id(VCHIQ_SERVICE_HANDLE_T handle)
{
   VCHIQ_SERVICE_T *service = find_service_by_handle(handle);

   if (!service)
      return VCHIQ_ERROR;

   return ioctl(service->fd, VCHIQ_IOC_GET_CLIENT_ID, service->handle);
}
