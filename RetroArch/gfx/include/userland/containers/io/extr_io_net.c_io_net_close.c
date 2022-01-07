
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_5__ {TYPE_2__* module; } ;
typedef TYPE_1__ VC_CONTAINER_IO_T ;
struct TYPE_6__ {scalar_t__ write_capture_file; scalar_t__ read_capture_file; scalar_t__ sock; } ;
typedef TYPE_2__ VC_CONTAINER_IO_MODULE_T ;


 int VC_CONTAINER_ERROR_INVALID_ARGUMENT ;
 int VC_CONTAINER_SUCCESS ;
 int fclose (scalar_t__) ;
 int free (TYPE_2__*) ;
 int vc_container_net_close (scalar_t__) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T io_net_close( VC_CONTAINER_IO_T *p_ctx )
{
   VC_CONTAINER_IO_MODULE_T *module = p_ctx->module;

   if (!module)
      return VC_CONTAINER_ERROR_INVALID_ARGUMENT;

   if (module->sock)
      vc_container_net_close(module->sock);






   free(module);
   p_ctx->module = ((void*)0);

   return VC_CONTAINER_SUCCESS;
}
