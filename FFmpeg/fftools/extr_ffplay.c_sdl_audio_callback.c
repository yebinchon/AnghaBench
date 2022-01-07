
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int16_t ;
struct TYPE_5__ {int frame_size; double bytes_per_sec; } ;
struct TYPE_6__ {int audio_buf_index; int audio_buf_size; scalar_t__ show_mode; scalar_t__ audio_volume; int audio_write_buf_size; int audio_hw_buf_size; int audclk; int extclk; int audio_clock_serial; TYPE_1__ audio_tgt; scalar_t__ audio_clock; int * audio_buf; int muted; } ;
typedef TYPE_2__ VideoState ;
typedef int Uint8 ;


 int AUDIO_S16SYS ;
 int SDL_AUDIO_MIN_BUFFER_SIZE ;
 scalar_t__ SDL_MIX_MAXVOLUME ;
 int SDL_MixAudioFormat (int *,int *,int ,int,scalar_t__) ;
 scalar_t__ SHOW_MODE_VIDEO ;
 double audio_callback_time ;
 int audio_decode_frame (TYPE_2__*) ;
 double av_gettime_relative () ;
 int isnan (scalar_t__) ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;
 int set_clock_at (int *,scalar_t__,int ,double) ;
 int sync_clock_to_slave (int *,int *) ;
 int update_sample_display (TYPE_2__*,int *,int) ;

__attribute__((used)) static void sdl_audio_callback(void *opaque, Uint8 *stream, int len)
{
    VideoState *is = opaque;
    int audio_size, len1;

    audio_callback_time = av_gettime_relative();

    while (len > 0) {
        if (is->audio_buf_index >= is->audio_buf_size) {
           audio_size = audio_decode_frame(is);
           if (audio_size < 0) {

               is->audio_buf = ((void*)0);
               is->audio_buf_size = SDL_AUDIO_MIN_BUFFER_SIZE / is->audio_tgt.frame_size * is->audio_tgt.frame_size;
           } else {
               if (is->show_mode != SHOW_MODE_VIDEO)
                   update_sample_display(is, (int16_t *)is->audio_buf, audio_size);
               is->audio_buf_size = audio_size;
           }
           is->audio_buf_index = 0;
        }
        len1 = is->audio_buf_size - is->audio_buf_index;
        if (len1 > len)
            len1 = len;
        if (!is->muted && is->audio_buf && is->audio_volume == SDL_MIX_MAXVOLUME)
            memcpy(stream, (uint8_t *)is->audio_buf + is->audio_buf_index, len1);
        else {
            memset(stream, 0, len1);
            if (!is->muted && is->audio_buf)
                SDL_MixAudioFormat(stream, (uint8_t *)is->audio_buf + is->audio_buf_index, AUDIO_S16SYS, len1, is->audio_volume);
        }
        len -= len1;
        stream += len1;
        is->audio_buf_index += len1;
    }
    is->audio_write_buf_size = is->audio_buf_size - is->audio_buf_index;

    if (!isnan(is->audio_clock)) {
        set_clock_at(&is->audclk, is->audio_clock - (double)(2 * is->audio_hw_buf_size + is->audio_write_buf_size) / is->audio_tgt.bytes_per_sec, is->audio_clock_serial, audio_callback_time / 1000000.0);
        sync_clock_to_slave(&is->extclk, &is->audclk);
    }
}
