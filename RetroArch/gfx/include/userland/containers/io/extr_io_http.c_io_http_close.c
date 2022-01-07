
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_6__ {TYPE_2__* module; } ;
typedef TYPE_1__ VC_CONTAINER_IO_T ;
struct TYPE_7__ {scalar_t__ header_list; } ;
typedef TYPE_2__ VC_CONTAINER_IO_MODULE_T ;


 int VC_CONTAINER_ERROR_INVALID_ARGUMENT ;
 int VC_CONTAINER_SUCCESS ;
 int free (TYPE_2__*) ;
 int io_http_close_socket (TYPE_2__*) ;
 int vc_containers_list_destroy (scalar_t__) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T io_http_close(VC_CONTAINER_IO_T *p_ctx)
{
   VC_CONTAINER_IO_MODULE_T *module = p_ctx->module;

   if (!module)
      return VC_CONTAINER_ERROR_INVALID_ARGUMENT;

   io_http_close_socket(module);
   if (module->header_list)
      vc_containers_list_destroy(module->header_list);

   free(module);
   p_ctx->module = ((void*)0);

   return VC_CONTAINER_SUCCESS;
}
