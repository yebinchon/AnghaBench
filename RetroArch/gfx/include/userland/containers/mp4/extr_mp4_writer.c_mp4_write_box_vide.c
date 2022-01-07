
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_21__ {TYPE_4__* format; } ;
typedef TYPE_5__ VC_CONTAINER_TRACK_T ;
struct TYPE_22__ {TYPE_5__** tracks; TYPE_1__* priv; } ;
typedef TYPE_6__ VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_23__ {size_t current_track; } ;
typedef TYPE_7__ VC_CONTAINER_MODULE_T ;
struct TYPE_20__ {int codec; TYPE_3__* type; } ;
struct TYPE_18__ {int width; int height; } ;
struct TYPE_19__ {TYPE_2__ video; } ;
struct TYPE_17__ {TYPE_7__* module; } ;


 int MP4_BOX_TYPE_ESDS ;
 int STREAM_STATUS (TYPE_6__*) ;



 int WRITE_U16 (TYPE_6__*,int,char*) ;
 int WRITE_U32 (TYPE_6__*,int,char*) ;
 int WRITE_U8 (TYPE_6__*,int ,char*) ;
 int _WRITE_U8 (TYPE_6__*,int ) ;
 int mp4_write_box (TYPE_6__*,int ) ;
 int mp4_write_box_vide_avcC (TYPE_6__*) ;
 int mp4_write_box_vide_d263 (TYPE_6__*) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T mp4_write_box_vide( VC_CONTAINER_T *p_ctx )
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   VC_CONTAINER_TRACK_T *track = p_ctx->tracks[module->current_track];
   unsigned int i;

   for(i = 0; i < 6; i++) WRITE_U8(p_ctx, 0, "reserved");
   WRITE_U16(p_ctx, 1, "data_reference_index");

   WRITE_U16(p_ctx, 0, "pre_defined");
   WRITE_U16(p_ctx, 0, "reserved");
   for(i = 0; i < 3; i++) WRITE_U32(p_ctx, 0, "pre_defined");
   WRITE_U16(p_ctx, track->format->type->video.width, "width");
   WRITE_U16(p_ctx, track->format->type->video.height, "height");
   WRITE_U32(p_ctx, 0x480000, "horizresolution");
   WRITE_U32(p_ctx, 0x480000, "vertresolution");
   WRITE_U32(p_ctx, 0, "reserved");
   WRITE_U16(p_ctx, 1, "frame_count");
   for(i = 0; i < 32; i++) _WRITE_U8(p_ctx, 0);
   WRITE_U16(p_ctx, 0x18, "depth");
   WRITE_U16(p_ctx, -1, "pre_defined");

   switch(track->format->codec)
   {
   case 129: return mp4_write_box_vide_avcC(p_ctx);
   case 130: return mp4_write_box_vide_d263(p_ctx);
   case 128: return mp4_write_box(p_ctx, MP4_BOX_TYPE_ESDS);
   default: break;
   }

   return STREAM_STATUS(p_ctx);
}
