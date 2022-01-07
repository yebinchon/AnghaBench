
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* userdata; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
typedef TYPE_2__ VCHIQ_SERVICE_T ;
typedef int VCHIQ_SERVICE_HANDLE_T ;


 TYPE_2__* find_service_by_handle (int ) ;

void *
vchiq_get_service_userdata(VCHIQ_SERVICE_HANDLE_T handle)
{
   VCHIQ_SERVICE_T *service = find_service_by_handle(handle);

   return service ? service->base.userdata : ((void*)0);
}
