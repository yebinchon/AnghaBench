
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_6__ {int frames_in_buffer; int planar_buf_frames; int sample_size; scalar_t__ buffer; scalar_t__ planar_buf; scalar_t__ use_float; int is_planar; } ;
struct TYPE_5__ {int channels; } ;
struct TYPE_7__ {TYPE_2__ audio; TYPE_1__ params; } ;
typedef TYPE_3__ ffmpeg_t ;


 scalar_t__ av_realloc (scalar_t__,int) ;
 int planarize_float (float*,float const*,int) ;
 int planarize_s16 (int *,int const*,int) ;

__attribute__((used)) static void planarize_audio(ffmpeg_t *handle)
{
   if (!handle->audio.is_planar)
      return;

   if (handle->audio.frames_in_buffer > handle->audio.planar_buf_frames)
   {
      handle->audio.planar_buf = av_realloc(handle->audio.planar_buf,
            handle->audio.frames_in_buffer * handle->params.channels *
            handle->audio.sample_size);
      if (!handle->audio.planar_buf)
         return;

      handle->audio.planar_buf_frames = handle->audio.frames_in_buffer;
   }

   if (handle->audio.use_float)
      planarize_float((float*)handle->audio.planar_buf,
            (const float*)handle->audio.buffer,
            handle->audio.frames_in_buffer);
   else
      planarize_s16((int16_t*)handle->audio.planar_buf,
            (const int16_t*)handle->audio.buffer,
            handle->audio.frames_in_buffer);
}
