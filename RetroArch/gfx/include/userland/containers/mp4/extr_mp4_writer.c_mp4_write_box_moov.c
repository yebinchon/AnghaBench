
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {unsigned int tracks_num; TYPE_1__* priv; } ;
typedef TYPE_2__ VC_CONTAINER_T ;
typedef scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_8__ {unsigned int current_track; } ;
typedef TYPE_3__ VC_CONTAINER_MODULE_T ;
struct TYPE_6__ {TYPE_3__* module; } ;


 int MP4_BOX_TYPE_MVHD ;
 int MP4_BOX_TYPE_TRAK ;
 scalar_t__ VC_CONTAINER_SUCCESS ;
 scalar_t__ mp4_write_box (TYPE_2__*,int ) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T mp4_write_box_moov( VC_CONTAINER_T *p_ctx )
{
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   unsigned int i;

   status = mp4_write_box(p_ctx, MP4_BOX_TYPE_MVHD);
   if(status != VC_CONTAINER_SUCCESS) return status;

   for(i = 0; i < p_ctx->tracks_num; i++)
   {
      module->current_track = i;
      status = mp4_write_box(p_ctx, MP4_BOX_TYPE_TRAK);
      if(status != VC_CONTAINER_SUCCESS) return status;
   }

   return status;
}
