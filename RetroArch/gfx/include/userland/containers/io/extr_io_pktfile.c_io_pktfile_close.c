
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_5__ {TYPE_2__* module; } ;
typedef TYPE_1__ VC_CONTAINER_IO_T ;
struct TYPE_6__ {int stream; } ;
typedef TYPE_2__ VC_CONTAINER_IO_MODULE_T ;


 int VC_CONTAINER_SUCCESS ;
 int fclose (int ) ;
 int free (TYPE_2__*) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T io_pktfile_close( VC_CONTAINER_IO_T *p_ctx )
{
   VC_CONTAINER_IO_MODULE_T *module = p_ctx->module;
   fclose(module->stream);
   free(module);
   return VC_CONTAINER_SUCCESS;
}
