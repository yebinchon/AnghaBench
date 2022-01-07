
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_10__ {TYPE_3__* format; } ;
typedef TYPE_4__ VC_CONTAINER_TRACK_T ;
typedef int VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_9__ {scalar_t__ codec; TYPE_2__* type; int extradata; int extradata_size; scalar_t__ codec_variant; } ;
struct TYPE_7__ {int width; int height; } ;
struct TYPE_8__ {TYPE_1__ video; } ;


 int READ_BYTES (int *,int ,int) ;
 int STREAM_STATUS (int *) ;
 scalar_t__ VC_CONTAINER_CODEC_H264 ;
 scalar_t__ VC_CONTAINER_CODEC_VP6 ;
 int VC_CONTAINER_ERROR_CORRUPTED ;
 int VC_CONTAINER_SUCCESS ;
 scalar_t__ VC_FOURCC (char,char,char,char) ;
 int _READ_U8 (int *) ;
 int _SKIP_U16 (int *) ;
 int _SKIP_U24 (int *) ;
 int vc_container_track_allocate_extradata (int *,TYPE_4__*,int) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T flv_read_videodata_properties(VC_CONTAINER_T *p_ctx,
   VC_CONTAINER_TRACK_T *track, int size)
{
   VC_CONTAINER_STATUS_T status;
   int width = 0, height = 0;

   if(track->format->codec == VC_CONTAINER_CODEC_VP6 ||
      track->format->codec == VC_FOURCC('v','p','6','a'))
   {

      uint8_t data = _READ_U8(p_ctx);
      _SKIP_U16(p_ctx);
      height = _READ_U8(p_ctx) * 16;
      width = _READ_U8(p_ctx) * 16;
      width -= data >> 4;
      height -= data & 0xf;
   }
   else if(track->format->codec == VC_CONTAINER_CODEC_H264)
   {
      uint8_t type = _READ_U8(p_ctx); size--;
      if(type || size <= 8) return VC_CONTAINER_ERROR_CORRUPTED;
      _SKIP_U24(p_ctx); size-=3;

      track->format->codec_variant = VC_FOURCC('a','v','c','C');
      status = vc_container_track_allocate_extradata(p_ctx, track, size);
      if(status != VC_CONTAINER_SUCCESS) return status;
      track->format->extradata_size = READ_BYTES(p_ctx, track->format->extradata, size);
   }

   track->format->type->video.width = width;
   track->format->type->video.height = height;

   return STREAM_STATUS(p_ctx);
}
