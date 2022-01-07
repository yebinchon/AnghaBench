
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int size; TYPE_1__* priv; } ;
typedef TYPE_2__ VC_CONTAINER_T ;
typedef scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_11__ {int tracks_add_done; int null; int moov_size; } ;
typedef TYPE_3__ VC_CONTAINER_MODULE_T ;
struct TYPE_9__ {TYPE_3__* module; } ;


 int MP4_BOX_TYPE_MOOV ;
 int STREAM_POSITION (TYPE_2__*) ;
 scalar_t__ VC_CONTAINER_SUCCESS ;
 scalar_t__ mp4_write_box (TYPE_2__*,int ) ;
 int vc_container_writer_extraio_disable (TYPE_2__*,int *) ;
 int vc_container_writer_extraio_enable (TYPE_2__*,int *) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T mp4_writer_add_track_done( VC_CONTAINER_T *p_ctx )
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;
   if(module->tracks_add_done) return status;


   if(!vc_container_writer_extraio_enable(p_ctx, &module->null))
   {
      status = mp4_write_box(p_ctx, MP4_BOX_TYPE_MOOV);
      module->moov_size = STREAM_POSITION(p_ctx);
      p_ctx->size = module->moov_size;
   }
   vc_container_writer_extraio_disable(p_ctx, &module->null);

   if(status == VC_CONTAINER_SUCCESS) module->tracks_add_done = 1;
   return status;
}
