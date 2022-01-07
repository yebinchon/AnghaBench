
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_13__ {TYPE_1__* format; } ;
typedef TYPE_3__ VC_CONTAINER_TRACK_T ;
struct TYPE_14__ {TYPE_3__** tracks; TYPE_2__* priv; } ;
typedef TYPE_4__ VC_CONTAINER_T ;
typedef scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_15__ {size_t current_track; } ;
typedef TYPE_5__ VC_CONTAINER_MODULE_T ;
struct TYPE_12__ {TYPE_5__* module; } ;
struct TYPE_11__ {scalar_t__ codec; int extradata; int extradata_size; int codec_variant; } ;


 int READ_BYTES (TYPE_4__*,int ,scalar_t__) ;
 scalar_t__ STREAM_STATUS (TYPE_4__*) ;
 scalar_t__ VC_CONTAINER_CODEC_H264 ;
 scalar_t__ VC_CONTAINER_ERROR_CORRUPTED ;
 scalar_t__ VC_CONTAINER_SUCCESS ;
 int VC_FOURCC (char,char,char,char) ;
 scalar_t__ vc_container_track_allocate_extradata (TYPE_4__*,TYPE_3__*,unsigned int) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T mp4_read_box_vide_avcC( VC_CONTAINER_T *p_ctx, int64_t size )
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   VC_CONTAINER_TRACK_T *track = p_ctx->tracks[module->current_track];
   VC_CONTAINER_STATUS_T status;

   if(track->format->codec != VC_CONTAINER_CODEC_H264 || size <= 0)
      return VC_CONTAINER_ERROR_CORRUPTED;

   track->format->codec_variant = VC_FOURCC('a','v','c','C');

   status = vc_container_track_allocate_extradata(p_ctx, track, (unsigned int)size);
   if(status != VC_CONTAINER_SUCCESS) return status;
   track->format->extradata_size = READ_BYTES(p_ctx, track->format->extradata, size);

   return STREAM_STATUS(p_ctx);
}
