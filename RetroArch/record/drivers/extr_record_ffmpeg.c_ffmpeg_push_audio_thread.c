
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint8_t ;
struct record_audio_data {size_t frames; scalar_t__ data; } ;
struct TYPE_15__ {int ctx; } ;
struct TYPE_14__ {size_t frames_in_buffer; size_t sample_size; size_t frame_cnt; TYPE_2__* codec; scalar_t__ buffer; } ;
struct TYPE_12__ {size_t channels; } ;
struct TYPE_16__ {TYPE_4__ muxer; TYPE_3__ audio; TYPE_1__ params; } ;
typedef TYPE_5__ ffmpeg_t ;
struct TYPE_17__ {scalar_t__ size; } ;
struct TYPE_13__ {size_t frame_size; } ;
typedef TYPE_6__ AVPacket ;


 scalar_t__ av_interleaved_write_frame (int ,TYPE_6__*) ;
 int encode_audio (TYPE_5__*,TYPE_6__*,int) ;
 int ffmpeg_audio_resample (TYPE_5__*,struct record_audio_data*) ;
 int memcpy (scalar_t__,int const*,size_t) ;

__attribute__((used)) static bool ffmpeg_push_audio_thread(ffmpeg_t *handle,
      struct record_audio_data *aud, bool require_block)
{
   size_t written_frames = 0;

   ffmpeg_audio_resample(handle, aud);

   while (written_frames < aud->frames)
   {
      AVPacket pkt;
      size_t can_write = handle->audio.codec->frame_size -
         handle->audio.frames_in_buffer;
      size_t write_left = aud->frames - written_frames;
      size_t write_frames = write_left > can_write ? can_write : write_left;
      size_t write_size = write_frames *
         handle->params.channels * handle->audio.sample_size;

      size_t bytes_in_buffer = handle->audio.frames_in_buffer *
         handle->params.channels * handle->audio.sample_size;
      size_t written_bytes = written_frames *
         handle->params.channels * handle->audio.sample_size;

      memcpy(handle->audio.buffer + bytes_in_buffer,
            (const uint8_t*)aud->data + written_bytes,
            write_size);

      written_frames += write_frames;
      handle->audio.frames_in_buffer += write_frames;

      if ((handle->audio.frames_in_buffer
               < (size_t)handle->audio.codec->frame_size) && require_block)
         break;

      if (!encode_audio(handle, &pkt, 0))
         return 0;

      handle->audio.frame_cnt += handle->audio.frames_in_buffer;
      handle->audio.frames_in_buffer = 0;

      if (pkt.size)
      {
         if (av_interleaved_write_frame(handle->muxer.ctx, &pkt) < 0)
            return 0;
      }
   }

   return 1;
}
