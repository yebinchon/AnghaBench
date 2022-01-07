
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_9__ {TYPE_3__* format; } ;
typedef TYPE_4__ VC_CONTAINER_TRACK_T ;
typedef int VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_8__ {int extradata_size; char* extradata; int codec; TYPE_2__* type; } ;
struct TYPE_6__ {int width; int height; } ;
struct TYPE_7__ {TYPE_1__ video; } ;


 int LOG_FORMAT (int *,char*,char*) ;
 int VC_CONTAINER_SUCCESS ;
 int WRITE_BYTES (int *,char*,int) ;
 int WRITE_U16 (int *,int,char*) ;
 int WRITE_U32 (int *,int,char*) ;
 int WRITE_U8 (int *,int ,char*) ;
 int codec_to_fourcc (int ) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T asf_write_bitmapinfoheader( VC_CONTAINER_T *p_ctx,
   VC_CONTAINER_TRACK_T *p_track )
{
   uint32_t fourcc;


   WRITE_U32(p_ctx, p_track->format->type->video.width, "Encoded Image Width");
   WRITE_U32(p_ctx, p_track->format->type->video.height, "Encoded Image Height");
   WRITE_U8(p_ctx, 0, "Reserved Flags");
   WRITE_U16(p_ctx, 40 + p_track->format->extradata_size, "Format Data Size");


   WRITE_U32(p_ctx, 40 + p_track->format->extradata_size, "Format Data Size");
   WRITE_U32(p_ctx, p_track->format->type->video.width, "Image Width");
   WRITE_U32(p_ctx, p_track->format->type->video.height, "Image Height");
   WRITE_U16(p_ctx, 0, "Reserved");
   WRITE_U16(p_ctx, 0, "Bits Per Pixel Count");
   fourcc = codec_to_fourcc(p_track->format->codec);
   WRITE_BYTES(p_ctx, (char *)&fourcc, 4);
   LOG_FORMAT(p_ctx, "Compression ID: %4.4s", (char *)&fourcc);
   WRITE_U32(p_ctx, 0, "Image Size");
   WRITE_U32(p_ctx, 0, "Horizontal Pixels Per Meter");
   WRITE_U32(p_ctx, 0, "Vertical Pixels Per Meter");
   WRITE_U32(p_ctx, 0, "Colors Used Count");
   WRITE_U32(p_ctx, 0, "Important Colors Count");

   WRITE_BYTES(p_ctx, p_track->format->extradata, p_track->format->extradata_size);

   return VC_CONTAINER_SUCCESS;
}
