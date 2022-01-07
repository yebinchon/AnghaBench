
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


typedef int line ;
struct TYPE_17__ {TYPE_5__** tracks; TYPE_1__* priv; } ;
typedef TYPE_6__ VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_18__ {int non_standard; int header_done; } ;
typedef TYPE_7__ VC_CONTAINER_MODULE_T ;
struct TYPE_16__ {TYPE_4__* format; } ;
struct TYPE_15__ {int codec; TYPE_3__* type; } ;
struct TYPE_13__ {int width; int height; int frame_rate_num; int frame_rate_den; int par_num; int par_den; } ;
struct TYPE_14__ {TYPE_2__ video; } ;
struct TYPE_12__ {TYPE_7__* module; } ;


 int STREAM_STATUS (TYPE_6__*) ;
 int VC_CONTAINER_ERROR_OUT_OF_RESOURCES ;
 int WRITE_BYTES (TYPE_6__*,char*,unsigned int) ;
 int _WRITE_U8 (TYPE_6__*,int) ;
 unsigned int snprintf (char*,int,char*,...) ;
 scalar_t__ to_yuv4mpeg2 (int ,char const**,int ,int ) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T rawvideo_write_header( VC_CONTAINER_T *ctx )
{
   VC_CONTAINER_MODULE_T *module = ctx->priv->module;
   unsigned int size;
   char line[128];
   const char *id;

   size = snprintf(line, sizeof(line), "YUV4MPEG2 W%i H%i",
      ctx->tracks[0]->format->type->video.width,
      ctx->tracks[0]->format->type->video.height);
   if (size >= sizeof(line))
      return VC_CONTAINER_ERROR_OUT_OF_RESOURCES;
   WRITE_BYTES(ctx, line, size);

   if (ctx->tracks[0]->format->type->video.frame_rate_num &&
       ctx->tracks[0]->format->type->video.frame_rate_den)
   {
      size = snprintf(line, sizeof(line), " F%i:%i",
         ctx->tracks[0]->format->type->video.frame_rate_num,
         ctx->tracks[0]->format->type->video.frame_rate_den);
      if (size >= sizeof(line))
         return VC_CONTAINER_ERROR_OUT_OF_RESOURCES;
      WRITE_BYTES(ctx, line, size);
   }

   if (ctx->tracks[0]->format->type->video.par_num &&
       ctx->tracks[0]->format->type->video.par_den)
   {
      size = snprintf(line, sizeof(line), " A%i:%i",
         ctx->tracks[0]->format->type->video.par_num,
         ctx->tracks[0]->format->type->video.par_den);
      if (size >= sizeof(line))
         return VC_CONTAINER_ERROR_OUT_OF_RESOURCES;
      WRITE_BYTES(ctx, line, size);
   }

   if (to_yuv4mpeg2(ctx->tracks[0]->format->codec, &id, 0, 0))
   {
      size = snprintf(line, sizeof(line), " C%s", id);
   }
   else
   {
      module->non_standard = 1;
      size = snprintf(line, sizeof(line), " C%4.4s",
         (char *)&ctx->tracks[0]->format->codec);
   }
   if (size >= sizeof(line))
      return VC_CONTAINER_ERROR_OUT_OF_RESOURCES;
   WRITE_BYTES(ctx, line, size);

   _WRITE_U8(ctx, 0x0a);
   module->header_done = 1;
   return STREAM_STATUS(ctx);
}
