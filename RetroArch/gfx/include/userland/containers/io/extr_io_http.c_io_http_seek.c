
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
typedef void* VC_CONTAINER_STATUS_T ;
struct TYPE_4__ {scalar_t__ size; void* status; TYPE_2__* module; } ;
typedef TYPE_1__ VC_CONTAINER_IO_T ;
struct TYPE_5__ {scalar_t__ cur_offset; } ;
typedef TYPE_2__ VC_CONTAINER_IO_MODULE_T ;


 void* VC_CONTAINER_ERROR_EOS ;
 void* VC_CONTAINER_SUCCESS ;

__attribute__((used)) static VC_CONTAINER_STATUS_T io_http_seek(VC_CONTAINER_IO_T *p_ctx, int64_t offset)
{
   VC_CONTAINER_IO_MODULE_T *module = p_ctx->module;





   if (offset < 0 || offset > p_ctx->size)
   {
      p_ctx->status = VC_CONTAINER_ERROR_EOS;
      return VC_CONTAINER_ERROR_EOS;
   }

   module->cur_offset = offset;
   p_ctx->status = VC_CONTAINER_SUCCESS;

   return VC_CONTAINER_SUCCESS;
}
