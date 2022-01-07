
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_5__ {int fd; int handle; } ;
typedef TYPE_1__ VCHI_SERVICE_T ;
typedef int VCHI_SERVICE_OPTION_T ;
typedef int VCHI_SERVICE_HANDLE_T ;
struct TYPE_6__ {int value; int handle; int option; } ;
typedef TYPE_2__ VCHIQ_SET_SERVICE_OPTION_T ;


 int RETRY (int,int ) ;
 int VCHIQ_ERROR ;
 int VCHIQ_IOC_SET_SERVICE_OPTION ;
 int VCHIQ_SERVICE_OPTION_TRACE ;

 TYPE_1__* find_service_by_handle (int const) ;
 int ioctl (int ,int ,TYPE_2__*) ;

int32_t vchi_service_set_option( const VCHI_SERVICE_HANDLE_T handle,
   VCHI_SERVICE_OPTION_T option, int value)
{
   VCHIQ_SET_SERVICE_OPTION_T args;
   VCHI_SERVICE_T *service = find_service_by_handle(handle);
   int ret;

   switch (option)
   {
   case 128:
      args.option = VCHIQ_SERVICE_OPTION_TRACE;
      break;
   default:
      service = ((void*)0);
      break;
   }

   if (!service)
      return VCHIQ_ERROR;

   args.handle = service->handle;
   args.value = value;

   RETRY(ret, ioctl(service->fd, VCHIQ_IOC_SET_SERVICE_OPTION, &args));

   return ret;
}
