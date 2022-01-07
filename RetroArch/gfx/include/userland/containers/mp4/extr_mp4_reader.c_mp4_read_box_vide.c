
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_20__ {TYPE_4__* format; } ;
typedef TYPE_5__ VC_CONTAINER_TRACK_T ;
struct TYPE_21__ {TYPE_5__** tracks; TYPE_1__* priv; } ;
typedef TYPE_6__ VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_22__ {size_t current_track; } ;
typedef TYPE_7__ VC_CONTAINER_MODULE_T ;
struct TYPE_19__ {TYPE_3__* type; } ;
struct TYPE_17__ {void* height; void* width; } ;
struct TYPE_18__ {TYPE_2__ video; } ;
struct TYPE_16__ {TYPE_7__* module; } ;


 int MP4_BOX_TYPE_VIDE ;
 void* MP4_READ_U16 (TYPE_6__*,char*) ;
 int MP4_SKIP_BYTES (TYPE_6__*,int) ;
 int MP4_SKIP_U16 (TYPE_6__*,char*) ;
 int MP4_SKIP_U32 (TYPE_6__*,char*) ;
 int MP4_SKIP_U8 (TYPE_6__*,char*) ;
 int STREAM_STATUS (TYPE_6__*) ;
 int mp4_read_boxes (TYPE_6__*,scalar_t__,int ) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T mp4_read_box_vide( VC_CONTAINER_T *p_ctx, int64_t size )
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   VC_CONTAINER_TRACK_T *track = p_ctx->tracks[module->current_track];
   unsigned int i;

   for(i = 0; i < 6; i++) MP4_SKIP_U8(p_ctx, "reserved");
   MP4_SKIP_U16(p_ctx, "data_reference_index");

   MP4_SKIP_U16(p_ctx, "pre_defined");
   MP4_SKIP_U16(p_ctx, "reserved");
   for(i = 0; i < 3; i++) MP4_SKIP_U32(p_ctx, "pre_defined");
   track->format->type->video.width = MP4_READ_U16(p_ctx, "width");
   track->format->type->video.height = MP4_READ_U16(p_ctx, "height");
   MP4_SKIP_U32(p_ctx, "horizresolution");
   MP4_SKIP_U32(p_ctx, "vertresolution");
   MP4_SKIP_U32(p_ctx, "reserved");
   MP4_SKIP_U16(p_ctx, "frame_count");
   MP4_SKIP_BYTES(p_ctx, 32);
   MP4_SKIP_U16(p_ctx, "depth");
   MP4_SKIP_U16(p_ctx, "pre_defined");

   if(size > 0)
      return mp4_read_boxes( p_ctx, size, MP4_BOX_TYPE_VIDE );

   return STREAM_STATUS(p_ctx);
}
