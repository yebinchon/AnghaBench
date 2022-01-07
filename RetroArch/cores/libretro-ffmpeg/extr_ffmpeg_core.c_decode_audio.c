
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int64_t ;
typedef int int16_t ;
struct TYPE_13__ {TYPE_1__** streams; } ;
struct TYPE_12__ {int nb_samples; scalar_t__ data; } ;
struct TYPE_11__ {int data; int size; } ;
struct TYPE_10__ {int time_base; } ;
typedef int SwrContext ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFrame ;
typedef int AVCodecContext ;


 int RETRO_LOG_ERROR ;
 int audio_decode_fifo ;
 size_t* audio_streams ;
 size_t audio_streams_ptr ;
 int av_frame_get_best_effort_timestamp (TYPE_3__*) ;
 int av_q2d (int ) ;
 scalar_t__ av_realloc (int *,size_t) ;
 int avcodec_decode_audio4 (int *,TYPE_3__*,int*,TYPE_2__*) ;
 int decode_last_audio_time ;
 int decode_thread_dead ;
 TYPE_4__* fctx ;
 int fifo_clear (int ) ;
 int fifo_cond ;
 int fifo_decode_cond ;
 int fifo_lock ;
 int fifo_write (int ,int *,size_t) ;
 size_t fifo_write_avail (int ) ;
 int log_cb (int ,char*) ;
 int main_sleeping ;
 int scond_signal (int ) ;
 int scond_wait (int ,int ) ;
 int slock_lock (int ) ;
 int slock_unlock (int ) ;
 int swr_convert (int *,int **,int,int const**,int) ;

__attribute__((used)) static int16_t *decode_audio(AVCodecContext *ctx, AVPacket *pkt,
      AVFrame *frame, int16_t *buffer, size_t *buffer_cap,
      SwrContext *swr)
{
   AVPacket pkt_tmp = *pkt;
   int got_ptr = 0;

   for (;;)
   {
      int64_t pts;
      size_t required_buffer;
      int ret = avcodec_decode_audio4(ctx, frame, &got_ptr, &pkt_tmp);

      if (ret < 0)
         return buffer;

      pkt_tmp.data += ret;
      pkt_tmp.size -= ret;

      if (!got_ptr)
         break;

      required_buffer = frame->nb_samples * sizeof(int16_t) * 2;
      if (required_buffer > *buffer_cap)
      {
         buffer = (int16_t*)av_realloc(buffer, required_buffer);
         *buffer_cap = required_buffer;
      }

      swr_convert(swr,
            (uint8_t**)&buffer,
            frame->nb_samples,
            (const uint8_t**)frame->data,
            frame->nb_samples);

      pts = av_frame_get_best_effort_timestamp(frame);
      slock_lock(fifo_lock);

      while (!decode_thread_dead && fifo_write_avail(audio_decode_fifo) < required_buffer)
      {
         if (!main_sleeping)
            scond_wait(fifo_decode_cond, fifo_lock);
         else
         {
            log_cb(RETRO_LOG_ERROR, "Thread: Audio deadlock detected ...\n");
            fifo_clear(audio_decode_fifo);
            break;
         }
      }

      decode_last_audio_time = pts * av_q2d(
            fctx->streams[audio_streams[audio_streams_ptr]]->time_base);

      if (!decode_thread_dead)
         fifo_write(audio_decode_fifo, buffer, required_buffer);

      scond_signal(fifo_cond);
      slock_unlock(fifo_lock);
   }

   return buffer;
}
