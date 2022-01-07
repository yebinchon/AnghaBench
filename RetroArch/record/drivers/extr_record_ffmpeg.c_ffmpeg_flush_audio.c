
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct record_audio_data {size_t frames; void* data; int member_0; } ;
typedef int int16_t ;
struct TYPE_11__ {int ctx; } ;
struct TYPE_10__ {int channels; } ;
struct TYPE_12__ {TYPE_2__ muxer; TYPE_1__ params; int audio_fifo; } ;
typedef TYPE_3__ ffmpeg_t ;
struct TYPE_13__ {int size; } ;
typedef TYPE_4__ AVPacket ;


 scalar_t__ av_interleaved_write_frame (int ,TYPE_4__*) ;
 int encode_audio (TYPE_3__*,TYPE_4__*,int) ;
 int ffmpeg_push_audio_thread (TYPE_3__*,struct record_audio_data*,int) ;
 int fifo_read (int ,void*,size_t) ;
 size_t fifo_read_avail (int ) ;

__attribute__((used)) static void ffmpeg_flush_audio(ffmpeg_t *handle, void *audio_buf,
      size_t audio_buf_size)
{
   size_t avail = fifo_read_avail(handle->audio_fifo);

   if (avail)
   {
      struct record_audio_data aud = {0};

      fifo_read(handle->audio_fifo, audio_buf, avail);

      aud.frames = avail / (sizeof(int16_t) * handle->params.channels);
      aud.data = audio_buf;

      ffmpeg_push_audio_thread(handle, &aud, 0);
   }

   for (;;)
   {
      AVPacket pkt;
      if (!encode_audio(handle, &pkt, 1) || !pkt.size ||
            av_interleaved_write_frame(handle->muxer.ctx, &pkt) < 0)
         break;
   }
}
