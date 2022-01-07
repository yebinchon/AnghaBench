
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_10__ {TYPE_1__* priv; } ;
typedef TYPE_2__ VC_CONTAINER_T ;
typedef scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_11__ {void* header_list_size; void* header_list_offset; int null_io; } ;
typedef TYPE_3__ VC_CONTAINER_MODULE_T ;
struct TYPE_9__ {TYPE_3__* module; } ;


 void* STREAM_POSITION (TYPE_2__*) ;
 scalar_t__ VC_CONTAINER_SUCCESS ;
 scalar_t__ avi_write_header_list (TYPE_2__*,void*) ;
 int vc_container_writer_extraio_disable (TYPE_2__*,int *) ;
 int vc_container_writer_extraio_enable (TYPE_2__*,int *) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T avi_write_headers( VC_CONTAINER_T *p_ctx )
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   VC_CONTAINER_STATUS_T status;
   uint32_t header_list_offset, header_list_size = 0;


   if(!vc_container_writer_extraio_enable(p_ctx, &module->null_io))
   {
      status = avi_write_header_list(p_ctx, 0);
      if (status != VC_CONTAINER_SUCCESS) return status;
      header_list_size = STREAM_POSITION(p_ctx) - 8;
   }
   vc_container_writer_extraio_disable(p_ctx, &module->null_io);

   header_list_offset = STREAM_POSITION(p_ctx);
   status = avi_write_header_list(p_ctx, header_list_size);
   if (status == VC_CONTAINER_SUCCESS && !module->header_list_offset)
   {
      module->header_list_offset = header_list_offset;
      module->header_list_size = header_list_size;
   }

   return status;
}
