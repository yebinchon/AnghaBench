
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_6__* ctx; } ;
struct TYPE_9__ {scalar_t__* format; } ;
struct TYPE_11__ {int filename; } ;
struct TYPE_12__ {TYPE_2__ muxer; TYPE_1__ config; TYPE_3__ params; } ;
typedef TYPE_4__ ffmpeg_t ;
struct TYPE_13__ {int * filename; int pb; void* oformat; } ;


 int AVIO_FLAG_WRITE ;
 int av_free (TYPE_6__*) ;
 void* av_guess_format (scalar_t__*,int *,int *) ;
 int av_strlcpy (int *,int ,int) ;
 TYPE_6__* avformat_alloc_context () ;
 scalar_t__ avio_open (int *,int *,int ) ;
 TYPE_6__* ctx ;

__attribute__((used)) static bool ffmpeg_init_muxer_pre(ffmpeg_t *handle)
{
   ctx = avformat_alloc_context();
   av_strlcpy(ctx->filename, handle->params.filename, sizeof(ctx->filename));

   if (*handle->config.format)
      ctx->oformat = av_guess_format(handle->config.format, ((void*)0), ((void*)0));
   else
      ctx->oformat = av_guess_format(((void*)0), ctx->filename, ((void*)0));

   if (!ctx->oformat)
      return 0;

   if (avio_open(&ctx->pb, ctx->filename, AVIO_FLAG_WRITE) < 0)
   {
      av_free(ctx);
      return 0;
   }

   handle->muxer.ctx = ctx;
   return 1;
}
