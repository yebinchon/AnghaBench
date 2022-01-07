
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VCHIQ_STATUS_T ;
struct TYPE_5__ {int value; int option; int handle; } ;
typedef TYPE_1__ VCHIQ_SET_SERVICE_OPTION_T ;
struct TYPE_6__ {int fd; int handle; } ;
typedef TYPE_2__ VCHIQ_SERVICE_T ;
typedef int VCHIQ_SERVICE_OPTION_T ;
typedef int VCHIQ_SERVICE_HANDLE_T ;


 int RETRY (int,int ) ;
 int VCHIQ_ERROR ;
 int VCHIQ_IOC_SET_SERVICE_OPTION ;
 int VCHIQ_SUCCESS ;
 TYPE_2__* find_service_by_handle (int ) ;
 int ioctl (int ,int ,TYPE_1__*) ;

VCHIQ_STATUS_T
vchiq_set_service_option(VCHIQ_SERVICE_HANDLE_T handle,
   VCHIQ_SERVICE_OPTION_T option, int value)
{
   VCHIQ_SET_SERVICE_OPTION_T args;
   VCHIQ_SERVICE_T *service = find_service_by_handle(handle);
   int ret;

   if (!service)
      return VCHIQ_ERROR;

   args.handle = service->handle;
   args.option = option;
   args.value = value;

   RETRY(ret, ioctl(service->fd, VCHIQ_IOC_SET_SERVICE_OPTION, &args));

   return (ret >= 0) ? VCHIQ_SUCCESS : VCHIQ_ERROR;
}
