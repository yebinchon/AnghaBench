
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_16__ {TYPE_3__* format; } ;
typedef TYPE_5__ VC_CONTAINER_TRACK_T ;
struct TYPE_17__ {TYPE_5__** tracks; TYPE_4__* priv; } ;
typedef TYPE_6__ VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_18__ {size_t current_track; } ;
typedef TYPE_7__ VC_CONTAINER_MODULE_T ;
struct TYPE_15__ {TYPE_7__* module; } ;
struct TYPE_14__ {TYPE_2__* type; } ;
struct TYPE_12__ {int channels; int sample_rate; } ;
struct TYPE_13__ {TYPE_1__ audio; } ;


 int MP4_SKIP_FOURCC (TYPE_6__*,char*) ;
 int MP4_SKIP_U8 (TYPE_6__*,char*) ;
 int STREAM_STATUS (TYPE_6__*) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T mp4_read_box_soun_devc( VC_CONTAINER_T *p_ctx, int64_t size )
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   VC_CONTAINER_TRACK_T *track = p_ctx->tracks[module->current_track];

   MP4_SKIP_FOURCC(p_ctx, "vendor");
   MP4_SKIP_U8(p_ctx, "version");
   MP4_SKIP_U8(p_ctx, "samples_per_frame");

   track->format->type->audio.channels = 1;
   track->format->type->audio.sample_rate = 8000;

   return STREAM_STATUS(p_ctx);
}
