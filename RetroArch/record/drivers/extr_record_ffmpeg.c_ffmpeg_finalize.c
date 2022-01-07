
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int ctx; } ;
struct TYPE_8__ {TYPE_1__ muxer; } ;
typedef TYPE_2__ ffmpeg_t ;
struct TYPE_9__ {int pb; } ;


 int av_write_trailer (int ) ;
 int avio_close (int ) ;
 TYPE_6__* ctx ;
 int deinit_thread (TYPE_2__*) ;
 int deinit_thread_buf (TYPE_2__*) ;
 int ffmpeg_flush_buffers (TYPE_2__*) ;

__attribute__((used)) static bool ffmpeg_finalize(void *data)
{
   ffmpeg_t *handle = (ffmpeg_t*)data;
   if (!handle)
      return 0;

   deinit_thread(handle);


   ffmpeg_flush_buffers(handle);

   deinit_thread_buf(handle);


   av_write_trailer(handle->muxer.ctx);

   avio_close(ctx->pb);

   return 1;
}
