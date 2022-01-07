
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_3__ {int * sock; } ;
typedef TYPE_1__ VC_CONTAINER_IO_MODULE_T ;


 int VC_CONTAINER_SUCCESS ;
 int vc_container_net_close (int *) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T io_http_close_socket(VC_CONTAINER_IO_MODULE_T *module)
{
   if (module->sock)
   {
      vc_container_net_close(module->sock);
      module->sock = ((void*)0);
   }

   return VC_CONTAINER_SUCCESS;
}
