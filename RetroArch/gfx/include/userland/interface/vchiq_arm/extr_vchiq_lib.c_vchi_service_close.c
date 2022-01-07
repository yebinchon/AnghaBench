
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_3__ {int lib_handle; scalar_t__ is_client; int handle; int fd; } ;
typedef TYPE_1__ VCHI_SERVICE_T ;
typedef int VCHI_SERVICE_HANDLE_T ;


 int RETRY (int,int ) ;
 int VCHIQ_ERROR ;
 int VCHIQ_IOC_CLOSE_SERVICE ;
 int VCHIQ_SERVICE_HANDLE_INVALID ;
 TYPE_1__* find_service_by_handle (int const) ;
 int ioctl (int ,int ,int ) ;

int32_t
vchi_service_close( const VCHI_SERVICE_HANDLE_T handle )
{
   VCHI_SERVICE_T *service = find_service_by_handle(handle);
   int ret;

   if (!service)
      return VCHIQ_ERROR;

   RETRY(ret,ioctl(service->fd, VCHIQ_IOC_CLOSE_SERVICE, service->handle));

   if (service->is_client)
      service->lib_handle = VCHIQ_SERVICE_HANDLE_INVALID;

   return ret;
}
